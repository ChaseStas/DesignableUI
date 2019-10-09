# DesignableUI

Helpful UI extension for Interface builder.

1. DesignableView
2. DesignableLabel
3. DesignableButton
4. DesignableImageView
5. DesignableBlurView


__Common property for every class__

| Property| Type | Description |
|---|---||
|corner|Int| Make rounded corners for view. Clips to bounds needs to be set TRUE in interface builder |
|rotation|CGFloat| Rotation angle in degrees |


__DesignableBlurView__

| Property| Type | Description |
|---|---||
|style|UIBlurEffect.Style| Blur style. Range 0-4 |


__DesignableLabel__

| Property| Type | Description |
|---|---||
|lineHeight|Int| Height of text between lines |
