Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJH3Q6AAMGQEBRH6QNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DA42F86D3
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:40:06 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id j11sf957411pjw.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:40:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610743204; cv=pass;
        d=google.com; s=arc-20160816;
        b=TOiYyoXsITJMOTNZ5PsAIuE66J80kZlY7LoJV5CiesNP3N9u8tghiLQxINlNDi7V8N
         IyuRlautUz1jds/8f/TecGNCre/EoymSX49lXYXScwFriTQh7heIUmkHzgGQo8qHiZ58
         QBfKfvXnSHVClRodU8KOW8eSY+aanEpmsaud8gmBbGPCw0sJ1o7+cPGdhJK+4TlJ5WHG
         EHjkx2Ccu88e8ZDD5DD5BGv18yARJ5c4AamWoQXle+xCsJioV0gYItbCHrRri21+WMIC
         Fq9s137i//NfckTpBlOPG2LeDVh6f1Hb/ilvmJUu6ohNFUV2mvcDpz9R7/YLNUBZwt8K
         pscw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bZxGZtJkq1FKaeXQ1gksCVUQ8ujQgoKDLWC43M2Noe0=;
        b=gI0JZhkXhr8wZ+tFYTUWoRJ6BlDXIX6VGyzWViWgPHsSs2sGOBu4pO9ZTM+KN4D/WJ
         qn3UVL+cDeX8dLwltS5D38aFaVA6CviHbw4lkHs1xs4tMnX1l/lokWiYuPZD1cFpEik8
         eL3qDl9CJySWq5UsigXkN2oFCQLbA6cMCGYnkIGG16F1oW/PyWk+QK6M9mHGOby21CRI
         7PdOh14Xmr6LraoG8VzXkGgL93tDWUO8D6HFn4AovPSWx6vY1yH8pI87EsshNuFO9/5l
         Gxt3ltPBuDol68QcfLh3oKhfbKs69O+1dQkG0yBBo3bdJbqaVWPm6Cv97LaZR99Un0MF
         5BGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FOnWWKVj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZxGZtJkq1FKaeXQ1gksCVUQ8ujQgoKDLWC43M2Noe0=;
        b=WftT6ubDX0QLdyN42h+chJuc57Z+lxnMS11Gxv14EdlTO2lzlHS19SeXKGwHukXEtV
         NhdbIcQOvmIUFAL++aP/GyJo8qW1LxTo1tgWWX+D84xBOK2fnXBLM/gpPmyo8ABUAQ+L
         2jmdSlD3mR66aGF3jWIGX3CZCkiy7/6JjjOweT+Cbl6Uwpq/oyiJD7AiSQ+kf8gUbfBw
         oVAudrv6S9N4Qd5NcrC69cfrWMHaJvWg/NmvryL0RS2PCW1tQid7nzwKc0mZXZzw0xuH
         ipOVqHpkTLDGnPtBaktf+Q6grADgydlkblg770Uiz+AcFcUT1Mvx7UocF625FDhC1Efx
         7IqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZxGZtJkq1FKaeXQ1gksCVUQ8ujQgoKDLWC43M2Noe0=;
        b=tPomReFR50tiFWdduJIrFiRC7OjiEUg6FQEJqfYyRjerPoxv+eiQXU2sn/apEiaK1W
         e5aiAGU6LE1B5amwK9NQ3cqxAW5QwiEr1zaZEsO2nHQSg6/So6kBtctINfbZiloPeLy9
         DG7Jt/CgUcmgQGGWeXrzysOOXN/mjh+OrJkNozpDtqRGzyn2Amq4aOmCAVZY7mjmFHpQ
         dRxxU5stC1y7+di6aLG4ZnoECNuOaIXq15mh/ValT1dcm6wxq3kgddeKF3oUcxZnsicx
         r5cDFC56sOW5eZLQpAtz8TvoXyYI85WBZPJVEW2ANd7E6jSkZCcOR0bCC1dLckf7U/1P
         B/FQ==
X-Gm-Message-State: AOAM530vjhvcmBSaB1J+5nQZOxFTlP2iOhdl2SF3f2Lt68JE6ogviogR
	V3ZwRwiahcsQQ5h8026ob7c=
X-Google-Smtp-Source: ABdhPJx0MKdn2aPecvyUojX99cmRzq+IYE74W9hWCBn/x9WjsaRNLwZOi2pnwRPpAHsbyqEYMNQf4Q==
X-Received: by 2002:a17:90b:128f:: with SMTP id fw15mr2539412pjb.8.1610743204780;
        Fri, 15 Jan 2021 12:40:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d4:: with SMTP id h20ls3940062pfq.5.gmail; Fri, 15 Jan
 2021 12:40:04 -0800 (PST)
X-Received: by 2002:a63:4e44:: with SMTP id o4mr14667925pgl.46.1610743204061;
        Fri, 15 Jan 2021 12:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610743204; cv=none;
        d=google.com; s=arc-20160816;
        b=xczcckTI3hgCEBoE14HcVg+vDPIo3iwWuOyzDb1vvBOdIV2YeFkdpTOXR52rN6EIdj
         oa2OxbqounrydgdPPRoSSmGHSyzWw+cyFP0pMcWM0qYl5EuKEttwAx6YZWF1NI4TNCyR
         8zHZQPAUHJqd+jvClUTuHsHi5H36ZZuppJVX6orRHHNea5BAVzUFxRAKd9mT1y1FP53P
         9mt7pNbaiNTykIN3y4w7rlZCiGu6ttUegdvl/fplCW2aHsTtfNImWHA0efCTk/ZT8FP2
         UmrU9XpS20mWiiKdg7g1BpCOVR5nEjfhM8RWaGGTqb4vZApZ41HtX5Ez9lQYDvVv06XA
         u5lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EH4IO2Y6Gl5lawHZl3yca8hDX5+vDVIieYBUo8Df+30=;
        b=jhAGF+pamO4eBf0iEDJc/P815UfzkDwwL2oRxfOd1ZDUqnR66o6CqUc5j2+kml44FE
         epWkFSPb9yLBv0n0hKoj63J61TbcVjQ0kzvwz7agOmYj+qgaxuB+HeggHV8fgetYN7nY
         NqIcgUtCT4DjjqH5vRy9gxiV2tFFL56TH4/MBQCo8tw/AA7Xe/IQzFt9sJVMA5qrCdC+
         jN1R1BHkfi6WjeqofWc8gxfqQvWTBVx2VN4ATDKKIoo8M1Zp4s6JIjrm0RlBFrqsx2wi
         DGgNGHgTzRQOLFlkV3Z6iyRsER/FgbM6qI2JvA7ZlHoS/G4EYANq1VBpDSljDfhFn5Wh
         v5Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FOnWWKVj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id e193si555490pfh.2.2021.01.15.12.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id g15so1583882pjd.2
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:40:04 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr14578288plc.10.1610743203533; Fri, 15
 Jan 2021 12:40:03 -0800 (PST)
MIME-Version: 1.0
References: <20210115184826.2250-1-erik.kaneda@intel.com> <20210115184826.2250-4-erik.kaneda@intel.com>
In-Reply-To: <20210115184826.2250-4-erik.kaneda@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 12:39:52 -0800
Message-ID: <CAKwvOd=16U7n=d3AoVq6X=kVimHVj3LcuMUZHzn-99f_WmKPkw@mail.gmail.com>
Subject: Fwd: [PATCH 3/9] ACPICA: ACPICA: fix -Wfallthrough
To: Kees Cook <keescook@chromium.org>, "Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FOnWWKVj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d
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

since we've been waiting on this

---------- Forwarded message ---------
From: Erik Kaneda <erik.kaneda@intel.com>
Date: Fri, Jan 15, 2021 at 11:20 AM
Subject: [PATCH 3/9] ACPICA: ACPICA: fix -Wfallthrough
To: Rafael J . Wysocki <rafael@kernel.org>, ACPI Devel Maling List
<linux-acpi@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Robert Moore
<robert.moore@intel.com>, Erik Kaneda <erik.kaneda@intel.com>


From: Nick Desaulniers <ndesaulniers@google.com>

ACPICA commit 4b9135f5774caa796ddf826448811e8e7f08ef2f

GCC 7.1 gained -Wimplicit-fallthrough to warn on implicit fallthrough,
as well as __attribute__((__fallthrough__)) and comments to explicitly
denote that cases of fallthrough were intentional. Clang also supports
this warning and statement attribute, but not the comment form.

Robert Moore provides additional context about the lint comments being
removed. They were for "an old version of PC-Lint, which we don't use
anymore." Drop those.

This will help us enable -Wimplicit-fallthrough throughout the Linux
kernel.

Suggested-by: Robert Moore <robert.moore@intel.com>

Link: https://github.com/acpica/acpica/commit/4b9135f5
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Bob Moore <robert.moore@intel.com>
Signed-off-by: Erik Kaneda <erik.kaneda@intel.com>
---
 drivers/acpi/acpica/dscontrol.c |  2 +-
 drivers/acpi/acpica/dswexec.c   |  3 +--
 drivers/acpi/acpica/dswload.c   |  2 +-
 drivers/acpi/acpica/dswload2.c  |  2 +-
 drivers/acpi/acpica/exfldio.c   |  2 +-
 drivers/acpi/acpica/exresop.c   |  4 ++--
 drivers/acpi/acpica/exstore.c   |  4 ++--
 drivers/acpi/acpica/hwgpe.c     |  2 +-
 drivers/acpi/acpica/utdelete.c  |  2 +-
 include/acpi/actypes.h          |  5 +++++
 include/acpi/platform/acgcc.h   | 15 +++++++++++++++
 11 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/acpi/acpica/dscontrol.c b/drivers/acpi/acpica/dscontrol.c
index 4b5b6e859f62..b58ffc7acdb9 100644
--- a/drivers/acpi/acpica/dscontrol.c
+++ b/drivers/acpi/acpica/dscontrol.c
@@ -62,7 +62,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state
*walk_state,
                        }
                }

-               /*lint -fallthrough */
+               ACPI_FALLTHROUGH;

        case AML_IF_OP:
                /*
diff --git a/drivers/acpi/acpica/dswexec.c b/drivers/acpi/acpica/dswexec.c
index 1d4f8c81028c..4a9799246fae 100644
--- a/drivers/acpi/acpica/dswexec.c
+++ b/drivers/acpi/acpica/dswexec.c
@@ -598,8 +598,7 @@ acpi_status acpi_ds_exec_end_op(struct
acpi_walk_state *walk_state)
                                        break;
                                }

-                               /* Fall through */
-                               /*lint -fallthrough */
+                               ACPI_FALLTHROUGH;

                        case AML_INT_EVAL_SUBTREE_OP:

diff --git a/drivers/acpi/acpica/dswload.c b/drivers/acpi/acpica/dswload.c
index 27069325b6de..dd97c86f8e41 100644
--- a/drivers/acpi/acpica/dswload.c
+++ b/drivers/acpi/acpica/dswload.c
@@ -224,7 +224,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
                                break;
                        }

-                       /*lint -fallthrough */
+                       ACPI_FALLTHROUGH;

                default:

diff --git a/drivers/acpi/acpica/dswload2.c b/drivers/acpi/acpica/dswload2.c
index edadbe146506..d9a3dfca7555 100644
--- a/drivers/acpi/acpica/dswload2.c
+++ b/drivers/acpi/acpica/dswload2.c
@@ -214,7 +214,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
                                break;
                        }

-                       /*lint -fallthrough */
+                       ACPI_FALLTHROUGH;

                default:

diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c
index ade35ff1c7ba..cde24e0fa6a8 100644
--- a/drivers/acpi/acpica/exfldio.c
+++ b/drivers/acpi/acpica/exfldio.c
@@ -434,7 +434,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
                 * region_field case and write the datum to the Operation Region
                 */

-               /*lint -fallthrough */
+               ACPI_FALLTHROUGH;

        case ACPI_TYPE_LOCAL_REGION_FIELD:
                /*
diff --git a/drivers/acpi/acpica/exresop.c b/drivers/acpi/acpica/exresop.c
index 4d1b22971d58..4a0f8b8bfe62 100644
--- a/drivers/acpi/acpica/exresop.c
+++ b/drivers/acpi/acpica/exresop.c
@@ -198,7 +198,7 @@ acpi_ex_resolve_operands(u16 opcode,

                                        target_op = AML_DEBUG_OP;

-                                       /*lint -fallthrough */
+                                       ACPI_FALLTHROUGH;

                                case ACPI_REFCLASS_ARG:
                                case ACPI_REFCLASS_LOCAL:
@@ -264,7 +264,7 @@ acpi_ex_resolve_operands(u16 opcode,
                         * Else not a string - fall through to the
normal Reference
                         * case below
                         */
-                       /*lint -fallthrough */
+                       ACPI_FALLTHROUGH;

                case ARGI_REFERENCE:    /* References: */
                case ARGI_INTEGER_REF:
diff --git a/drivers/acpi/acpica/exstore.c b/drivers/acpi/acpica/exstore.c
index 3adc0a29d890..8fe33051275d 100644
--- a/drivers/acpi/acpica/exstore.c
+++ b/drivers/acpi/acpica/exstore.c
@@ -96,7 +96,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
                        return_ACPI_STATUS(AE_OK);
                }

-               /*lint -fallthrough */
+               ACPI_FALLTHROUGH;

        default:

@@ -422,7 +422,7 @@ acpi_ex_store_object_to_node(union
acpi_operand_object *source_desc,
                                break;
                        }

-                       /* Fallthrough */
+                       ACPI_FALLTHROUGH;

                case ACPI_TYPE_DEVICE:
                case ACPI_TYPE_EVENT:
diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c
index b13a4ed5bc63..0c84300e915c 100644
--- a/drivers/acpi/acpica/hwgpe.c
+++ b/drivers/acpi/acpica/hwgpe.c
@@ -167,7 +167,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info
*gpe_event_info, u32 action)
                        return (AE_BAD_PARAMETER);
                }

-               /*lint -fallthrough */
+               ACPI_FALLTHROUGH;

        case ACPI_GPE_ENABLE:

diff --git a/drivers/acpi/acpica/utdelete.c b/drivers/acpi/acpica/utdelete.c
index 4c0d4e434196..624a26794d55 100644
--- a/drivers/acpi/acpica/utdelete.c
+++ b/drivers/acpi/acpica/utdelete.c
@@ -112,7 +112,7 @@ static void acpi_ut_delete_internal_obj(union
acpi_operand_object *object)
                                                       gpe_block);
                }

-               /*lint -fallthrough */
+               ACPI_FALLTHROUGH;

        case ACPI_TYPE_PROCESSOR:
        case ACPI_TYPE_THERMAL:
diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
index 647cb11d0a0a..9082628ee3ed 100644
--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -1286,4 +1286,9 @@ typedef enum {

 #define ACPI_OPT_END                    -1

+/* Definitions for explicit fallthrough */
+
+#ifndef ACPI_FALLTHROUGH
+#endif
+
 #endif                         /* __ACTYPES_H__ */
diff --git a/include/acpi/platform/acgcc.h b/include/acpi/platform/acgcc.h
index 7d63d03cf507..91f7a02c798a 100644
--- a/include/acpi/platform/acgcc.h
+++ b/include/acpi/platform/acgcc.h
@@ -54,4 +54,19 @@ typedef __builtin_va_list va_list;

 #define ACPI_USE_NATIVE_MATH64

+/* GCC did not support __has_attribute until 5.1. */
+
+#ifndef __has_attribute
+#define __has_attribute(x) 0
+#endif
+
+/*
+ * Explictly mark intentional explicit fallthrough to silence
+ * -Wimplicit-fallthrough in GCC 7.1+.
+ */
+
+#if __has_attribute(__fallthrough__)
+#define ACPI_FALLTHROUGH __attribute__((__fallthrough__))
+#endif
+
 #endif                         /* __ACGCC_H__ */
--
2.29.2



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D16U7n%3Dd3AoVq6X%3DkVimHVj3LcuMUZHzn-99f_WmKPkw%40mail.gmail.com.
