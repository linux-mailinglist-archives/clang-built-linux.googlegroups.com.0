Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNWYQXZQKGQE7R6A6ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FB117B05B
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Mar 2020 22:16:39 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id h8sf271376ywi.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Mar 2020 13:16:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583442998; cv=pass;
        d=google.com; s=arc-20160816;
        b=F/THy9eE2T0LoOwMgVcsOJ1yiBMgSQjpKU2Ajubxhk6oV2I00JQRauECLULiTzWWIl
         I8U9nQJ/VPWEDLKku4r/Z8yu+hnhi7Cw3WKv07BkX+ERTU/DXn1kHQH5Uf2/L6zOu4Jf
         DFGJbNwBAve07PoxBkXrpw//ghSHsdRxE7yvuLvnu8fZl8L2dbbqKnDqKG2yEVsmhD7q
         gR7E1m9awt14Rwy/dhfsOj2tyc5DBoD+1MVl2GqzgewOsaf30SIgq8PmLmQN2CI2sDyK
         2W3QBU+w1pP+Ca+yD1poFu2nP+fIWULmNldB0X4s1q29MeUbTY+H5rIEfemiQViLdY//
         nFYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=45m6J98l0nfbUUHGsssXo47v4PpgueGCC/5s4m/Vx8Y=;
        b=QEPNjLU/9M3qf8GkWHqOkNoGRfrtccmXA8NfNk+S9M8t0A/R3DzmM7CzxoL6eKCx0x
         NJsNsTK5g0uuyk8jNtWMW6f7pgTo97BTu0rKVR6/zImOgh+YVpGo9NXIszVjYD24QVKz
         ScmumJFv/Lcjc8XqgqgvQ4o6lmbJMEOtskgFI9KDxP8il61TMYr/NVNN8Jf5sPa3mR/C
         DZpe0fzx/L0K6SnR0BYEFac1h9+EuUpGtleR5J61qrNY1w5YZVFR71nCwcrWcumGE77T
         xEpd4jhOw91tFCWu446WzdvMG22P6el9SSkZE8iB2pv3x/lSBGQmtQ5lLuWOa6oZ+In2
         b6Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X2UrjpDc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=45m6J98l0nfbUUHGsssXo47v4PpgueGCC/5s4m/Vx8Y=;
        b=fViSepSDRulqUyBZDEYvVkZTtqJcNxNZXmn1r9cH41HCqIpv0rACKAYiiWgEdKrk0v
         CHMSyreU7fZF0Ntwztn7Lc71N8IZdemmlxjeEyYJCs9nimcEHHq9iAJ8U8lQn95xWxG8
         hCNnFPW3moXLEQ2EOSmP8ZjGiMOSaITlMGLx5+iQZuPryeg2dn6oZjC78Yvge7scORVB
         uNbpHkBf8y7Tt4JgSu08KAspMQkLMIl5KEK+0ds38ohU7sq0FkChSlViD19Vk01FPZ8r
         KjVifjf7PvbY/irDYaXWdtRwy3MIaJ1/sPs8vaNwqx5vGDl9blC6cW7I1y4K+JgRYUsE
         bPsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=45m6J98l0nfbUUHGsssXo47v4PpgueGCC/5s4m/Vx8Y=;
        b=QevTwpbbyjisWKpIk9OqI7TroCqJMqVb8s5OD/qGwauyfZC+ylWSaMZVr22jwpc8n8
         kYQojtwL668fmhjNDl2fAU8GFQLDJlyuma1N7FrgBDODcOEfSEp5nZR3XylePTL/BMBq
         rHll/P3nwYwqHUcJuMgrsF4coOM1wcKGBgsBPaA0vPaE3mhuSL+QZqFG+CRRD6JsITeD
         H4eSBYEzvAXa6tTFv18A/XQ9bOAeRYk4rOeJ1xLuzbKHw4oJ6f9t6re6CqspXJKiNCIb
         Y6cBweUXVbBu61jc07H98NmgqCNqFYBradwWELor1hW1+AS81ngFh9S71/Oell/w2Tml
         C70w==
X-Gm-Message-State: ANhLgQ2SNZVqPSrrWMjtm81eYq+nksC4neYaSKZKS3go1WabMJbZ1JOF
	4uoOq2ImAO2/FOQKBV4hU78=
X-Google-Smtp-Source: ADFU+vtjqDLn+4/qXdUK0dtpPqYl2Ox0t+r+0kVhLGAQ0THKQLZVwzY8uu2SOub6aM2YbOlbtvkTuA==
X-Received: by 2002:a25:4604:: with SMTP id t4mr265798yba.358.1583442998527;
        Thu, 05 Mar 2020 13:16:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5a0a:: with SMTP id o10ls424401ywb.4.gmail; Thu, 05 Mar
 2020 13:16:38 -0800 (PST)
X-Received: by 2002:a0d:f687:: with SMTP id g129mr497484ywf.342.1583442998184;
        Thu, 05 Mar 2020 13:16:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583442998; cv=none;
        d=google.com; s=arc-20160816;
        b=l/p4YhSGVwNdI0i8tjKYF9n56c0v1D7+XDuJ+vvxSuKCnlkK+LQXZaV+IKLbTXbDVP
         hnhMa5KgaWgOS6CmGFGb+uHsH+Bbd7SEHVUKRg7nIbawQ6SmCYSXa83KjOgjh85lGAYC
         jOpSVzxWsKJU7uMArJZzlsLbvN2lGJKNO0iuLFL+vDZVuQpfBPkLKBAPsx8PLFyoLm4+
         4lP6WtBa2F3dIjIPlacn0SmQ1FxMvZfWiSdofKRb7UNC6JDd2vLGET/O/wEurRfr7veQ
         dTsedvyk0z7ERbN8+4dwlWZyDmkQfaFVviW7HH/VP+IGDjjAEaQtT7VkXrxs/5RpR7ay
         fGnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=f8JK/BgMKxX5ylAjV4mHdZr2uRlIL+cK7yYUiOO7Mfs=;
        b=imy8n/nbwdL+fCdcTtx7fd9HU1sjQzZufX7Da2RzHaAl9c7pt+v5BgHhNkLM9yZn/K
         Z3mP2uKHcI2ThlEHRZkr48an9HVhXF4A62k6Cytppbfaht54ossWK0FP7muQLq9jFlOV
         oCiP59afuZRqO+gfG03bpquwReqVeVh71MH84B3mo+7QC7+laZ3qc2qu1cQMRMG40vwc
         0Ljib1dxUadHsLpnwPuDhdaDQjt9+vnPNmb8Ca090aX6IPtGQC/kV3lwBMUIjYnlRFk6
         4DR5UKr7UnTMB/n6EufrVJFo4UmEmxN3gl4uT2q0gm1CfQ3qoHVDx1KCymESJID9Xhgl
         pEPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X2UrjpDc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id u7si10519ywg.5.2020.03.05.13.16.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 13:16:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id w3so303343plz.5
        for <clang-built-linux@googlegroups.com>; Thu, 05 Mar 2020 13:16:38 -0800 (PST)
X-Received: by 2002:a17:90a:ead0:: with SMTP id ev16mr72448pjb.164.1583442996863;
 Thu, 05 Mar 2020 13:16:36 -0800 (PST)
MIME-Version: 1.0
References: <20200305202435.1284242-1-matthew.d.roper@intel.com>
In-Reply-To: <20200305202435.1284242-1-matthew.d.roper@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Mar 2020 13:16:25 -0800
Message-ID: <CAKwvOd=HkFWvWei0DHv2FiP188pHQBAwCO5e+K4hSMoq2n0mOg@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/tgl: Don't treat unslice registers as masked
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
	=?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernelci@groups.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X2UrjpDc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, Mar 5, 2020 at 12:25 PM Matt Roper <matthew.d.roper@intel.com> wrot=
e:
>
> The UNSLICE_UNIT_LEVEL_CLKGATE and UNSLICE_UNIT_LEVEL_CLKGATE2 registers
> that we update in a few engine workarounds are not masked registers
> (i.e., we don't have to write a mask bit in the top 16 bits when
> updating one of the lower 16 bits).  As such, these workarounds should
> be applied via wa_write_or() rather than wa_masked_en()
>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Fixes: 50148a25f841 ("drm/i915/tgl: Move and restrict Wa_1408615072")
> Fixes: 3551ff928744 ("drm/i915/gen11: Moving WAs to rcs_engine_wa_init()"=
)
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

I appreciate the fast turnaround time!
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

If the maintainer wouldn't mind adding the following tags to help us
track and show some love for our bots:
Link: https://github.com/ClangBuiltLinux/linux/issues/918
Reported-by: kernelci.org bot <bot@kernelci.org>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 908a70914399..b4785212fb7d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1382,8 +1382,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, =
struct i915_wa_list *wal)
>                 wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PU=
SH);
>
>                 /* Wa_1408615072:tgl */
> -               wa_masked_en(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -                            VSUNIT_CLKGATE_DIS_TGL);
> +               wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +                           VSUNIT_CLKGATE_DIS_TGL);
>         }
>
>         if (IS_TIGERLAKE(i915)) {
> @@ -1467,12 +1467,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
, struct i915_wa_list *wal)
>                  * Wa_1408615072:icl,ehl  (vsunit)
>                  * Wa_1407596294:icl,ehl  (hsunit)
>                  */
> -               wa_masked_en(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> -                            VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
> +               wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> +                           VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
>
>                 /* Wa_1407352427:icl,ehl */
> -               wa_masked_en(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -                            PSDUNIT_CLKGATE_DIS);
> +               wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +                           PSDUNIT_CLKGATE_DIS);
>
>                 /* Wa_1406680159:icl,ehl */
>                 wa_write_or(wal,
> --
> 2.24.1
>


--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DHkFWvWei0DHv2FiP188pHQBAwCO5e%2BK4hSMoq2n0mOg%4=
0mail.gmail.com.
