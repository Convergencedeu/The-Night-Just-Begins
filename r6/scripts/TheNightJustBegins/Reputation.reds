@addField(PlayerPuppet)
public let m_ncpdReputation: Int32 = 0;

@addMethod(PlayerPuppet)
public func GetNCPDReputation() -> Int32 {
    return this.m_ncpdReputation;
}

@addMethod(PlayerPuppet)
public func SetNCPDReputation(value: Int32) -> Void {
    this.m_ncpdReputation = value;
}


@wrapMethod(SenseComponent)
public final func ReevaluateDetectionOverwrite(
  target: wref<GameObject>,
  opt isVisible: Bool
) -> Bool {
  if IsDefined(target) && target.IsPlayer() {
    let owner = this.GetOwnerPuppet();

    if IsDefined(owner) && owner.IsPrevention() {
      let player = target as PlayerPuppet;

      if IsDefined(player) && player.GetNCPDReputation() >= 50 {
        this.SetDetectionOverwrite(target.GetEntityID());
        this.SetDetectionAttitudeOverwrite(n"player");
        this.ResetDetection(target.GetEntityID());

        return false;
      }
    }
  }

  return wrappedMethod(target, isVisible);
}
