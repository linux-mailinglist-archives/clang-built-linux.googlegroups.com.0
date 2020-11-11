Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV4RVX6QKGQEFDPU4BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2562AE636
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 03:13:45 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id r83sf305259oia.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 18:13:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605060824; cv=pass;
        d=google.com; s=arc-20160816;
        b=z+Ild7vFAHjhdDFJiQ/56UWCegOPCYu8PR515I7cSYSdp9+M0V59n3zEMZdCH1F9kN
         IBCK+wqO5MWUa9to5ZcvcFFNn0AAWE2R8bOdkmUxagytZAP6Grg8/PTpLx475d9kvi58
         AbR1XUgbeQ/u0BGeAa6jw89stRNrB+QZ3Wp0CNUjrW6M2gybXkV0da2xGQNzEo14V/V9
         UDviCBWkrgKxkILDb3xYkQK207rIpj35lSndYKzzBOppjcFp57BHClbeh4Awk/R3AAzx
         oCW0cSWt9RVdK+ZZGbi+ia/kIXMnUQDyDERgd7jNWdSRoUfZxtRBKghrSsfmOAB8JHYj
         DS0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=/Y+/i986RdQMLn+g+xomwnEvB+gH1JakQGwyalEXsf0=;
        b=fcJmbGBp6apD2Xl1JLWixuc5UOb5VBlFVJL0FDjRSOlGm32pUfoFjgtQuB4TElqhOa
         zSnkScpWmNnXolcLPA/YHfwvbs0lEm7QfO/DK1D5booGN6VaqBQ35IpL9FA7NUsM1X/z
         jmMpdlufCpxLdWwxMufP5PMtYTC8JsG+rU7S+1Mh/e7eXaB00/hLVrAedAVTIO+8GHFq
         3daNh5oPNMTrUzL4laBPmxx+jr15uDhd0YlWaLUFYM+/8yDn5aZ5j6IwWaukTmLDCcg4
         d2/r8/PCMxe4TaZ+UsHCfe9QmJiNumg/m9f/GrRlNH1+XHLGtKMWe8t62qHpuQtuYxC1
         l3Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XzskPPUh;
       spf=pass (google.com: domain of 310irxwwkabod34i0kbd84hi6ee6b4.2ec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=310irXwwKABoD34I0KBD84HI6EE6B4.2EC@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Y+/i986RdQMLn+g+xomwnEvB+gH1JakQGwyalEXsf0=;
        b=nHsLCEWVC2RzIZW/L7/ORs24RYwWa3xBzTu8eSCouYZ5qRNcvrIiL7mONIjjYmqFSx
         4Rkk2N5kGgguEiZg8WzgXr4oLf8TsjB8rxiywx9lTsdxUfRmcsuJisWLrQjYjnnGOuSj
         dyykSvDGEnYadBpgBb3Xxqm2PQwlyRF2PBhP2HbKBmBUp9SydHwN03f4riDUrnYDh/0e
         rNS5jod4yVcwxq0iZdamTlYjGeUC+NMA5Dv4vZNX4slySbxXQjG3+zxJTGUXV8BFIfTi
         EVHRQzrRnKCXCAiIiV8G+9bXPUbJSKMsVcklSUgcegKeTusNxV6ZPIhgA3PQA3mPlwA2
         umTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Y+/i986RdQMLn+g+xomwnEvB+gH1JakQGwyalEXsf0=;
        b=JIoJN7yNqGX4sLXmm4XK/fN+LgzYKW5nab2qW17xTMUiGay2xPBHESY6lR/MKJ2Wgq
         w01m14iHYUiOys3Wa5jZr/Jbg7cZCvM85EjS6EKjLsqBKiOts547wp/a6/WnNRnwm6SO
         VFEoe2piNyJfMYnv5rLJFOxbeMnge/77Sak2eQ4tS+ZavnGB7moSTdU3bGA5FJjH48OR
         mxtYnJUcZyi5uIAbaFf4xRB+z+LQt3Wc/KDx3A6Rkf1ksdWzZXYsVvspfCHPxk0m6EWO
         Kw9PIhkASOV+44x7Gv1pbHpZ5NOjePXaPpNbhJ84wxeAfL0uK1BZw9mSvGn40aDQuixF
         gzsQ==
X-Gm-Message-State: AOAM532T3zMjno+UzyK8zW4lOcOR2H8gbqr1Whv3AmjsUEB3PVRVzlxW
	ZbvZdm9oVtPiLkeyWlYwHps=
X-Google-Smtp-Source: ABdhPJwO38XQcmraniWdyxwIXEe5t2+ieCXL89Hi3F+erNSs4sEcoDESTlUHujYfZt7jfdtdSg9cTg==
X-Received: by 2002:a4a:8f15:: with SMTP id e21mr15848987ool.8.1605060824019;
        Tue, 10 Nov 2020 18:13:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6b0f:: with SMTP id g15ls3565527otp.0.gmail; Tue, 10 Nov
 2020 18:13:43 -0800 (PST)
X-Received: by 2002:a9d:67d8:: with SMTP id c24mr9997368otn.356.1605060823683;
        Tue, 10 Nov 2020 18:13:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605060823; cv=none;
        d=google.com; s=arc-20160816;
        b=cDOgzbkXsZDaDYaJjdeFHIQ8DwRm9o/BLtVPs69M3b9EEXe509hNKG3DCWRDL78KCL
         ENTgavU7VVJxhQlcdFJLqAi4LQx2BPRDSkQjYzZkd1z0gFTvmoul4uvoyMQYEvyM98HN
         2+mD4iS6e4ldN5NFFgXbkHTKW36K0YBx+VoUsf5PTj7BQHD4iTXmLSmYhlL3bFl6AVwG
         e/BrGBHqrJbKBeB76yGjmsOy4z0motWffkn3ETzC7chtZmWmmC7YFoxNkNBDvWJCMVIB
         ksCGF8jNMwLIjAZobE4Qfuznc1HFz3iDbdX3IacY+7+uBAcbvtDewaVMGW2Fvx73AWT3
         jNCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=W+tp6PqByVFyf+7BIq7ovR7ee/HSTPxo+nYyur7x4tk=;
        b=BctYWvdnW8Oog/Hqtmr9HBXbJGZfUejYA+7c6xzxsYhhq6FeRKZL1h+B1WbrK7OoH0
         sFgNnMLOq8bbOohuslbGfOE9j6Hg4uj0ysbG/ZSILAaetwnIAqZczWnnsfeH/s/bBw+M
         ArHLKly95BHtObUBGw9enj0RVYPgf3c1DR3ghOeIafBH0AH4bDNK91rk2rH98nOMPJys
         QuHfvMJU7qartVBPGGzQPjrT4B9Dgprmleffos91ArdC+46Q3kbf5lZM0kfOc8E7qlHS
         UXPQnJCi7n01Un77S9BTEufzVvCUT1G18wrOLDQyJ1ssBZjrv9CBWWT7cORXxkOEQY22
         PAjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XzskPPUh;
       spf=pass (google.com: domain of 310irxwwkabod34i0kbd84hi6ee6b4.2ec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=310irXwwKABoD34I0KBD84HI6EE6B4.2EC@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id d20si71374oti.1.2020.11.10.18.13.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 18:13:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 310irxwwkabod34i0kbd84hi6ee6b4.2ec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id f9so630786qkg.13
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 18:13:43 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:aedf:: with SMTP id
 n31mr16891447qvd.31.1605060823101; Tue, 10 Nov 2020 18:13:43 -0800 (PST)
Date: Tue, 10 Nov 2020 18:11:30 -0800
Message-Id: <20201111021131.822867-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] ACPICA: fix -Wfallthrough
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Robert Moore <robert.moore@intel.com>, Erik Kaneda <erik.kaneda@intel.com>, 
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Len Brown <lenb@kernel.org>, linux-acpi@vger.kernel.org, 
	devel@acpica.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XzskPPUh;       spf=pass
 (google.com: domain of 310irxwwkabod34i0kbd84hi6ee6b4.2ec@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=310irXwwKABoD34I0KBD84HI6EE6B4.2EC@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

The "fallthrough" pseudo-keyword was added as a portable way to denote
intentional fallthrough. This code seemed to be using a mix of
fallthrough comments that GCC recognizes, and some kind of lint marker.
I'm guessing that linter hasn't been run in a while from the mixed use
of the marker vs comments.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/acpi/acpica/dscontrol.c | 3 +--
 drivers/acpi/acpica/dswexec.c   | 4 +---
 drivers/acpi/acpica/dswload.c   | 3 +--
 drivers/acpi/acpica/dswload2.c  | 3 +--
 drivers/acpi/acpica/exfldio.c   | 3 +--
 drivers/acpi/acpica/exresop.c   | 5 ++---
 drivers/acpi/acpica/exstore.c   | 6 ++----
 drivers/acpi/acpica/hwgpe.c     | 3 +--
 drivers/acpi/acpica/utdelete.c  | 3 +--
 drivers/acpi/acpica/utprint.c   | 2 +-
 10 files changed, 12 insertions(+), 23 deletions(-)

diff --git a/drivers/acpi/acpica/dscontrol.c b/drivers/acpi/acpica/dscontrol.c
index 4b5b6e859f62..1e75e5fbfd19 100644
--- a/drivers/acpi/acpica/dscontrol.c
+++ b/drivers/acpi/acpica/dscontrol.c
@@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
 				break;
 			}
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case AML_IF_OP:
 		/*
diff --git a/drivers/acpi/acpica/dswexec.c b/drivers/acpi/acpica/dswexec.c
index 1d4f8c81028c..e8c32d4fe55f 100644
--- a/drivers/acpi/acpica/dswexec.c
+++ b/drivers/acpi/acpica/dswexec.c
@@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
 				if (ACPI_FAILURE(status)) {
 					break;
 				}
-
-				/* Fall through */
-				/*lint -fallthrough */
+				fallthrough;
 
 			case AML_INT_EVAL_SUBTREE_OP:
 
diff --git a/drivers/acpi/acpica/dswload.c b/drivers/acpi/acpica/dswload.c
index 27069325b6de..afc663c3742d 100644
--- a/drivers/acpi/acpica/dswload.c
+++ b/drivers/acpi/acpica/dswload.c
@@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/dswload2.c b/drivers/acpi/acpica/dswload2.c
index edadbe146506..1b794b6ba072 100644
--- a/drivers/acpi/acpica/dswload2.c
+++ b/drivers/acpi/acpica/dswload2.c
@@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c
index ade35ff1c7ba..9d1cabe0fed9 100644
--- a/drivers/acpi/acpica/exfldio.c
+++ b/drivers/acpi/acpica/exfldio.c
@@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
 		 * Now that the Bank has been selected, fall through to the
 		 * region_field case and write the datum to the Operation Region
 		 */
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_LOCAL_REGION_FIELD:
 		/*
diff --git a/drivers/acpi/acpica/exresop.c b/drivers/acpi/acpica/exresop.c
index 4d1b22971d58..df48faa9a551 100644
--- a/drivers/acpi/acpica/exresop.c
+++ b/drivers/acpi/acpica/exresop.c
@@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
 				case ACPI_REFCLASS_DEBUG:
 
 					target_op = AML_DEBUG_OP;
-
-					/*lint -fallthrough */
+					fallthrough;
 
 				case ACPI_REFCLASS_ARG:
 				case ACPI_REFCLASS_LOCAL:
@@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
 			 * Else not a string - fall through to the normal Reference
 			 * case below
 			 */
-			/*lint -fallthrough */
+			fallthrough;
 
 		case ARGI_REFERENCE:	/* References: */
 		case ARGI_INTEGER_REF:
diff --git a/drivers/acpi/acpica/exstore.c b/drivers/acpi/acpica/exstore.c
index 3adc0a29d890..2067baa7c120 100644
--- a/drivers/acpi/acpica/exstore.c
+++ b/drivers/acpi/acpica/exstore.c
@@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
 		if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
 			return_ACPI_STATUS(AE_OK);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	default:
 
@@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
 				}
 				break;
 			}
-
-			/* Fallthrough */
+			fallthrough;
 
 		case ACPI_TYPE_DEVICE:
 		case ACPI_TYPE_EVENT:
diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c
index b13a4ed5bc63..fbfad80c8a53 100644
--- a/drivers/acpi/acpica/hwgpe.c
+++ b/drivers/acpi/acpica/hwgpe.c
@@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
 		if (!(register_bit & gpe_register_info->enable_mask)) {
 			return (AE_BAD_PARAMETER);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_GPE_ENABLE:
 
diff --git a/drivers/acpi/acpica/utdelete.c b/drivers/acpi/acpica/utdelete.c
index 4c0d4e434196..8076e7947585 100644
--- a/drivers/acpi/acpica/utdelete.c
+++ b/drivers/acpi/acpica/utdelete.c
@@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
 			(void)acpi_ev_delete_gpe_block(object->device.
 						       gpe_block);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_PROCESSOR:
 	case ACPI_TYPE_THERMAL:
diff --git a/drivers/acpi/acpica/utprint.c b/drivers/acpi/acpica/utprint.c
index 681c11f4af4e..f7e43baf5ff2 100644
--- a/drivers/acpi/acpica/utprint.c
+++ b/drivers/acpi/acpica/utprint.c
@@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
 		case 'X':
 
 			type |= ACPI_FORMAT_UPPER;
-			/* FALLTHROUGH */
+			fallthrough;
 
 		case 'x':
 
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111021131.822867-1-ndesaulniers%40google.com.
