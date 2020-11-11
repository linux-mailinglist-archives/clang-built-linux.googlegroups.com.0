Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6PDWD6QKGQEZBRBLEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A10F2AF881
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 19:48:26 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id o25sf2367735qkj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 10:48:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605120505; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCFguRyqV2ZrJ3OaNRysyY0YnRABXO2INBUaTYkj7iIgn0B6+Fbx1Okr4hvMocUQh6
         NqK5p0NrRxXPPZRB3tUCYVQ/Kob5Ybzs67zSI56BsD/N5AIy4FZkPY/QhU2CGZeAOxK1
         +HYTsmSqXQ5e0n88fQ3C2/SxBU8peu5KnRB6HW/lVfuCWYevytAe6YfSSCKgM7xJG3/u
         p+guSNg2TlAk4StaFgFicGjwXzoEFLVMdNG85uKhBD6ht3emEpe9Bbg6VBZ3N4V2Az4y
         BXVPQw5dWrHBX2AobW/A7FweYwfNjXTWHEXri9Z9YXXf3aPZb8Nxa2d43bnhKaX52rFv
         QqKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5ELbdynGHzUm127n0HSXv0gfl1jQ8wi4zsTvGhJFN48=;
        b=Q2VWcC7Zan8DqnldzkPUqt/DKYIslSNXaV7zWy8TKNJgOc6o8sBWbV5wgvAAmTU9Be
         mkmDmTln6CSmoeuls4G9+X2OiCS77ol2JJH9QghEI6kgcAFc/k4N0pkxraagT6vLQLAB
         6MMsSwURSdwUE1+Xuhpd23mGrkZsCGi4uTTuskRQ64kqKQNXCNwyDliArlh99YskNYlU
         4ECtyz9QEUdnGLHU9wrecAYnBpX7BLOj/IUDuUaBg1PhewpDISzJxletzuPzWgF886Zz
         tw+W6/MIboXosxhFwKKwDhM9X9W+Q+pgrQhPTmJEw12Wx/scXeric86S7lTqqWSYuq18
         DCxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NwTnpqOO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ELbdynGHzUm127n0HSXv0gfl1jQ8wi4zsTvGhJFN48=;
        b=grhU49kdRi67ZfrkhF7U2NiIyK0qmBoKz+WYqf/ApJo9xN41zX62EU5wJU3lod+M7I
         oDQnbgCZ/h1B+i54Az7KrhGqLkQiU7j61QJFRk9tl8LHKr7BMJGhF1Z24d0Dluh6Fron
         cNKIz2tKzCQ80WuKlBATebD0/WKdRWMunp8s3pImQemhTrYTd62ML841nvDqE0lZbIAN
         repvUDqU/kquVDZBvsXVAMe2liFMLChzRyXwGi2hBR4PUEfY/ARfP+A3w468ALp6+mvf
         l68V7piw3vyp+8tZtznYU4CvDPyPyY1Bm0ke1qTEMK2beVYshDnnUlDXBuF1DwxA50KT
         2qeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ELbdynGHzUm127n0HSXv0gfl1jQ8wi4zsTvGhJFN48=;
        b=e/h854YQRrdC0stYFJfrFUE70DrdQ0AN+pkHTfciX2khzB4x2a738WGyPKcgSuiUxV
         BsxcB6PfAJEYHqa+gZkyn/ZJt0bZtERO9yKCKVRWA65K+S32Cwja59A6eD8NgqRo2va7
         GcWU1Jy5OzatqMLYOaz0niJVNrl8LE0r6J4UQx2KmeSnhir4RK21a7/NG0AYWTb5ITpp
         13Vvfvy6Fk8KIZ2uu8sbxTEuWgcmPC+C8GT6dYUSF5FWUhUEKU9lOP1Wm5UoMDp26b6k
         6rPqTASSdbJA6rVSsSuaDPPqxUG9bvAs04vQmQwwXEvbvk7jdn+UYr8q4AuNCRnrKMgR
         5OFA==
X-Gm-Message-State: AOAM530SBHaws3hoiYH+JKadRuGEib+LtiDRd/mmHFyAuLPltTuhl1uF
	EuIoUHrIDR49U9/WbU0bP+E=
X-Google-Smtp-Source: ABdhPJx2bKLca0+WfvZrqDHIxXI+9ClZucZbieFQ0CJuqtH9wOmSXkAHwMuAZp8zpI++ETDNMAUQyQ==
X-Received: by 2002:a05:6214:a8f:: with SMTP id ev15mr15039392qvb.20.1605120505515;
        Wed, 11 Nov 2020 10:48:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f78e:: with SMTP id s14ls74821qvn.11.gmail; Wed, 11 Nov
 2020 10:48:24 -0800 (PST)
X-Received: by 2002:a05:6214:363:: with SMTP id t3mr21246204qvu.9.1605120504438;
        Wed, 11 Nov 2020 10:48:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605120504; cv=none;
        d=google.com; s=arc-20160816;
        b=Xba67bm4OdTSNoiORK7jv0fML+XFpI3K8buRmu4HLbvgjHGVfmiqp+1XYxzMgAM3WX
         2yvtO+tMjhtxNZWbWG1GK2CakaiR33M7My/jJeGOWlfpQskxS/hjgnQzOuN5hWGwm5ar
         wLH1/f21UZPvNF9QetkbNXxpgtJMWnDhvau7+ykbybdRRGEsp3KL6aBWH6WUhfdthrkK
         8VdOv8q77DNwykaVcOoC4tEjxq96QtmPU1GhF2x+071Al1eESLDBdSXpCW509esvFPht
         gy3DQ6olUTto38ZftGyVkvt8YD86zEDeLX1uRixPqjxISHc6zqqEC8gvul3Oc3dEWi4q
         SrPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mb7PYJLkfxY3lJZblFIcMSXi8MnosMBDn1R6Xa9I8rc=;
        b=ZymJRlHOA1WdYdCO+eEjNUSlJ5tc26+Rc8gDM38ugHTvZrZlqLjKe5tMhE3LKRfCwk
         2QocdYElhol05u8fB18MEiWPDHEC62ktJeAoPxSy7n6VriRGVleN6wGy60+aqAdg0wuu
         l9kUpE7djDfYrV1kuG/pX+4dfjD898L3J8CtDTI0QttY+R2jD6kRIs4Ptge1DQPPFDZf
         HyqS8lRgIowMvnjaDKVMou+4fqY0luygqUWtxt/AxI+duOkNZ21jP9EgianJkU/ihPVB
         QkjWOPcNONTBhrAdGnK9nZbKtHacISrGK+PbnzFyVspTPDKalawBcvzGgRyH1CSVvRbO
         Y7nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NwTnpqOO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h3si149544qko.3.2020.11.11.10.48.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 10:48:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id e7so2112828pfn.12
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 10:48:24 -0800 (PST)
X-Received: by 2002:a62:ed0d:0:b029:18b:78d:626 with SMTP id
 u13-20020a62ed0d0000b029018b078d0626mr24673040pfh.15.1605120503879; Wed, 11
 Nov 2020 10:48:23 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com> <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 10:48:12 -0800
Message-ID: <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=NwTnpqOO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Wed, Nov 11, 2020 at 7:15 AM Moore, Robert <robert.moore@intel.com> wrote:
>
> Yes, but: isn't the "fallthrough" keyword compiler-specific? That is the problem for us.

It's not a keyword.

It's a preprocessor macro that expands to
__attribute__((__fallthrough__)) for compilers that support it.  For
compilers that do not, it expands to nothing.  Both GCC 7+ and Clang
support this attribute.  Which other compilers that support
-Wimplicit-fallthrough do you care to support?

> Bob
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk2U5%2BDcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w%40mail.gmail.com.
