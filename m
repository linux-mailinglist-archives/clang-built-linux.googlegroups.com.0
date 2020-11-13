Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD7XXP6QKGQEH3IA6DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4332B26F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:33:04 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id f6sf996101uao.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:33:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605303183; cv=pass;
        d=google.com; s=arc-20160816;
        b=NXWcpaOTVByRtGNG0EzEQyBhwiVEaDW9Sv5xBSoVpLoEPd5aEMa0M7923nu18up/P1
         D6feKv8BVKgU1KeDb1ZBvr66soCfCWTNIpjJKIA/g7j9UG3IG7IY+wFiAvix0AWgQV6I
         uta5KFvqba15r/kwS0/HZIj1YNPqy2H9A62Upfbzk8nvnlXQeCA+5LuvhJ9JqXFIPOJO
         n28YnCNEuGkqpQ601YC6nVBaz4MDBZOsXr7X2lct3sKFro/XE+s+eMbQdUOrpObYjeLX
         D8LiL/kqn7saUKAFoUcINEW2m7TtL+BcpCWvsVRFNkUU1xy2n7Mg+Tt8tr4R9vjUhnWJ
         mWYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WRPCksRUdo0ILoAP+wnEY04s7gRWeBBmi4ZndcjOFV0=;
        b=TcNM5XQQBVEFEIfQGWSm9pc2GTMDWdZvFB0tX0AHI7fj+xYgDR1KGQ+nm1hdSKyG8V
         56uMAM8WWUp5gg/CrSh1hUwLvB/gVtFzmOcmiULPNviVI2CdnYEbNsGF5kXtJJiUqPKX
         PeNJDTRtpLvZ+14KI7YGzsd5OHWuIha/mmkCkAEVq2R+0XmsFA1CYeytYyfCv8DBQB85
         PVAySo+N5bkKV2z78ZYjfuhTvFu3kB4WB4yjqaaM37yeozSVRyG/OPJRzM/WWOHolfwx
         TY/EKQa9Dkm8XyuC0XZ6PVOJKHVcnwzSLKjqgzU0rDN/X6JaAoIKv2jf3FiOXUGuLSJY
         h//Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q44b+tCO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WRPCksRUdo0ILoAP+wnEY04s7gRWeBBmi4ZndcjOFV0=;
        b=qws8qK0F/vGbWHi8rYS5NUGLypya58yu/pgLoMQNAqmMKsRC4sbqxH/LEdT9SlTpzW
         m2tSBRQLiI2NDcenaADMliE2it6mRroLJL/dP5Ky2PDwBKXMga0aBK1m7HRHzBA7qeb6
         EDvyE0FrP8tjaquDHCtIbe5plUBjbjeVcAt4CpwB9YF8AEDV0/kuPPCBRqUNGYqtESQX
         9H4wgub99Ul3jEGJUzo3Cmp5BChecCY8CCq5MWcz1iZLd62vm+oN85qYys5uvjUuT35c
         Ef5z9en9c90fQJF3gbTcNnaw871cX3CcPeUY8m7Rk9dk4Uedn8XNjPZKoo7Xh+d+6dZf
         9imQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WRPCksRUdo0ILoAP+wnEY04s7gRWeBBmi4ZndcjOFV0=;
        b=Ph2WcwM7fngNUCzBatPIxEVN3xR7oxj/YaghyqZMDbt2bSnO2/mw1A0HAg34Mx3v69
         dPwkdSmJISS1ve7SOCQhFbfV3chaqWhjYW275bKzKryaCg6xlHY4qQ/FVTZadOv1qun4
         iR38h1BeSwIzRrmp1LZCZ3KSydH+JDqjKD8aPQSCaSUAwpq+CtMiRuM2K1uBCvgRLwO7
         VZpKQaLSnlgbQJlF14RUXIMGVFW4EvZIHtdxVgZ2HUI1A3O33FRDGHtsuD6vaAyKKFUN
         FKJ66myINf7L3xWHy+610dSlMRGHpqk4uCBQZF4ANrG9yjpVDQuvZ50SNLalS3kN806s
         yzRw==
X-Gm-Message-State: AOAM531vOWYPPOC1+Fn4/CB4gntqIZh0bFf2z0krS7bVwbMc/EzVppso
	opeL5WRESjYK483S+zHJE8E=
X-Google-Smtp-Source: ABdhPJzZwCY1y6ubLrDXuse/eDvCO1ZwZxlmAviaMhUtaUQeO545ch7kCtgoxXAS2YIur7QmIi+lAA==
X-Received: by 2002:a1f:248c:: with SMTP id k134mr2808046vkk.14.1605303183230;
        Fri, 13 Nov 2020 13:33:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:12b6:: with SMTP id j22ls433428vkp.8.gmail; Fri, 13
 Nov 2020 13:33:02 -0800 (PST)
X-Received: by 2002:a1f:1242:: with SMTP id 63mr2894003vks.8.1605303182677;
        Fri, 13 Nov 2020 13:33:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605303182; cv=none;
        d=google.com; s=arc-20160816;
        b=oIQ5uv7XrZ1w0PyH72PsxTCto7pITawm2EdYNlLp6bI/dUvvnTxNtqRHdG7dvR96EQ
         Jgx+6I0l5rBJEH7cCZcf58eTXdkXpAR0tGwtDGgOylOgt14EAvKPwm+LQOyuzZ/uCaxB
         OQICb0RnPd9vF+MG8do3P3MbHTF799bDwBo78X3wiFndTKhGM9KjAwNhGRU7khR/1+WS
         UEtw6gutRHjnwP2IMUwWYQAXM3iaHd0/C4Pzy4azwRpnsbrV2CVWFP/vVHaEHXvLPQbf
         ThwCZVpR8z83K6GEQLaZ/GXKBhPTwB1E7ZbJAT2idm7NG3NU5BwXdY2jU8vINaBq8pOs
         +UoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pQ75ikH05XshXgYTR+1qs3C6oeVcKGNvq/PDg+cf54w=;
        b=cVviUrdtIq134/xdwhBId+mU/E+MS1/b9v6Xw8+kTYG0Tp/Sl3vSGalS1N7iPZrSbC
         44drBTd2T4ypUTyGWeVltwXoQvH4lJ4vjMcu1/63XhaVyKg4mM9wykXuBLlT7AHV8yrV
         5dBVdYX+iZKwD4pRc9YAKx98qB9ODIfXu9GXUvCTcZuUz3yYz/f6LBCzb1eaplF/dKvH
         KHwuERF5f5iEBnDxpRRHxD+DR0Q3VHcC/0mm1T1X2VF2yF6UywKP3owJ/F5hn7t+XXH3
         QDtvyojFpOgKQj0SpDgZdawWxpGR3p754fFuMkqPmdkDzfiIAmpDLMauu4YbwkUxj9XA
         vMrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q44b+tCO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id k3si969422vkg.3.2020.11.13.13.33.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:33:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y22so5166312plr.6
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 13:33:02 -0800 (PST)
X-Received: by 2002:a17:902:d309:b029:d7:cc2d:1ee7 with SMTP id
 b9-20020a170902d309b02900d7cc2d1ee7mr3737792plc.10.1605303181615; Fri, 13 Nov
 2020 13:33:01 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com> <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 13:32:50 -0800
Message-ID: <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Moore, Robert" <robert.moore@intel.com>
Cc: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q44b+tCO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Fri, Nov 13, 2020 at 1:27 PM Moore, Robert <robert.moore@intel.com> wrote:
>
>
>
> -----Original Message-----
> From: ndesaulniers via sendgmr <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick Desaulniers
> Sent: Tuesday, November 10, 2020 6:12 PM
> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>
> Cc: clang-built-linux@googlegroups.com; Nick Desaulniers <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
> Subject: [PATCH] ACPICA: fix -Wfallthrough
>
> The "fallthrough" pseudo-keyword was added as a portable way to denote intentional fallthrough. This code seemed to be using a mix of fallthrough comments that GCC recognizes, and some kind of lint marker.
> I'm guessing that linter hasn't been run in a while from the mixed use of the marker vs comments.
>
> /*lint -fallthrough */
>
> This is the lint marker

Yes; but from my patch, the hunk modifying
acpi_ex_store_object_to_node() and vsnprintf() seem to indicate that
maybe the linter hasn't been run in a while.

Which linter is that?  I'm curious whether I should leave those be,
and whether we're going to have an issue between compilers and linters
as to which line/order these would need to appear on.

>
> BTW, what version of gcc added -Wfallthrough?

GCC 7.1 added -Wimplicit-fallthrough.

>
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/acpi/acpica/dscontrol.c | 3 +--
>  drivers/acpi/acpica/dswexec.c   | 4 +---
>  drivers/acpi/acpica/dswload.c   | 3 +--
>  drivers/acpi/acpica/dswload2.c  | 3 +--
>  drivers/acpi/acpica/exfldio.c   | 3 +--
>  drivers/acpi/acpica/exresop.c   | 5 ++---
>  drivers/acpi/acpica/exstore.c   | 6 ++----
>  drivers/acpi/acpica/hwgpe.c     | 3 +--
>  drivers/acpi/acpica/utdelete.c  | 3 +--
>  drivers/acpi/acpica/utprint.c   | 2 +-
>  10 files changed, 12 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/acpi/acpica/dscontrol.c b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19 100644
> --- a/drivers/acpi/acpica/dscontrol.c
> +++ b/drivers/acpi/acpica/dscontrol.c
> @@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
>                                 break;
>                         }
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case AML_IF_OP:
>                 /*
> diff --git a/drivers/acpi/acpica/dswexec.c b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f 100644
> --- a/drivers/acpi/acpica/dswexec.c
> +++ b/drivers/acpi/acpica/dswexec.c
> @@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
>                                 if (ACPI_FAILURE(status)) {
>                                         break;
>                                 }
> -
> -                               /* Fall through */
> -                               /*lint -fallthrough */
> +                               fallthrough;
>
>                         case AML_INT_EVAL_SUBTREE_OP:
>
> diff --git a/drivers/acpi/acpica/dswload.c b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d 100644
> --- a/drivers/acpi/acpica/dswload.c
> +++ b/drivers/acpi/acpica/dswload.c
> @@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/dswload2.c b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072 100644
> --- a/drivers/acpi/acpica/dswload2.c
> +++ b/drivers/acpi/acpica/dswload2.c
> @@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9 100644
> --- a/drivers/acpi/acpica/exfldio.c
> +++ b/drivers/acpi/acpica/exfldio.c
> @@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
>                  * Now that the Bank has been selected, fall through to the
>                  * region_field case and write the datum to the Operation Region
>                  */
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_LOCAL_REGION_FIELD:
>                 /*
> diff --git a/drivers/acpi/acpica/exresop.c b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551 100644
> --- a/drivers/acpi/acpica/exresop.c
> +++ b/drivers/acpi/acpica/exresop.c
> @@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                                 case ACPI_REFCLASS_DEBUG:
>
>                                         target_op = AML_DEBUG_OP;
> -
> -                                       /*lint -fallthrough */
> +                                       fallthrough;
>
>                                 case ACPI_REFCLASS_ARG:
>                                 case ACPI_REFCLASS_LOCAL:
> @@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                          * Else not a string - fall through to the normal Reference
>                          * case below
>                          */
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 case ARGI_REFERENCE:    /* References: */
>                 case ARGI_INTEGER_REF:
> diff --git a/drivers/acpi/acpica/exstore.c b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120 100644
> --- a/drivers/acpi/acpica/exstore.c
> +++ b/drivers/acpi/acpica/exstore.c
> @@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
>                 if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
>                         return_ACPI_STATUS(AE_OK);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         default:
>
> @@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
>                                 }
>                                 break;
>                         }
> -
> -                       /* Fallthrough */
> +                       fallthrough;
>
>                 case ACPI_TYPE_DEVICE:
>                 case ACPI_TYPE_EVENT:
> diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c index b13a4ed5bc63..fbfad80c8a53 100644
> --- a/drivers/acpi/acpica/hwgpe.c
> +++ b/drivers/acpi/acpica/hwgpe.c
> @@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
>                 if (!(register_bit & gpe_register_info->enable_mask)) {
>                         return (AE_BAD_PARAMETER);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_GPE_ENABLE:
>
> diff --git a/drivers/acpi/acpica/utdelete.c b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585 100644
> --- a/drivers/acpi/acpica/utdelete.c
> +++ b/drivers/acpi/acpica/utdelete.c
> @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
>                         (void)acpi_ev_delete_gpe_block(object->device.
>                                                        gpe_block);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_PROCESSOR:
>         case ACPI_TYPE_THERMAL:
> diff --git a/drivers/acpi/acpica/utprint.c b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2 100644
> --- a/drivers/acpi/acpica/utprint.c
> +++ b/drivers/acpi/acpica/utprint.c
> @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
>                 case 'X':
>
>                         type |= ACPI_FORMAT_UPPER;
> -                       /* FALLTHROUGH */
> +                       fallthrough;
>
>                 case 'x':
>
> --
> 2.29.2.222.g5d2a92d10f8-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DqDNnOu1oTeEN%2BchvfJcQSS5dxREo0JQHC%3DW0zhpYeLw%40mail.gmail.com.
