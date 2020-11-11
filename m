Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMUFVX6QKGQE7MNKAEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F342AE5FF
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 02:47:32 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id g20sf308015plj.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 17:47:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605059250; cv=pass;
        d=google.com; s=arc-20160816;
        b=sLOUtuJ+tlUunLB7oR0k8YC4PkDfV7DAuZMmpTBsW/VIP4lSqDF3Ii9dIKdHgcl9hc
         X+ZbuM/lOuJIU2oGtH56O0RRhOIe+zio/DTrRy5MHs5T9k0WoRLAk/rkXjpwOXFPMVMs
         sKVSw46LEn0/rjguccbzE8M2CcR5mIMRBA6qYilw8JT8JJMaNWrvv95YYc7e+MwwxdJB
         dJJwTtZ69IM9ETx5iuY39m3JHC8/ohQwsw4GlUnyUETCA1vkU5v3JXC0mH0CBGc11C9O
         W9Qer8IkU6eNN6KgU+r9nwHUxwSnhoZSB4me6+k/Ka7mOj8av0G8qcaqEg9TmouWX5PZ
         LSnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=AQDOajB5AXERkEYFQolwVCHVSunjKkQbcRsQkO4pQKQ=;
        b=HckyEr45br8lesJaLTFYpcQi0BrEUyW5P0TWuIFkQrsHrFtMWH3n1cDGGiGX1xPFrp
         7/C1NJZC70V9Abkiq9bpAxDGj0AWFzqNnu3jNklz2kuxRRYO88jKnWnAQ8XmSYi0Tw6s
         KYlHcb5+xEMqUv/CVD42d3lo2BRioUnKKcyljrH3nlwMib86Ahbczsf5AhSb2kkIFd6g
         w+t9cPEdCdG4IchHJd/MocxYRbtmunjkN9jh+2wuyoiOOQInHFUvowIhlM+k9Kvm8KSM
         x7HIn+mkxYC9ZQVqsKafY82VpQR2NzwDakMqmSNDmFOEmeZIFHg7+fHMLoKosz2rdG2p
         Qiyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XG1NLhaz;
       spf=pass (google.com: domain of 3sukrxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3sUKrXwwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AQDOajB5AXERkEYFQolwVCHVSunjKkQbcRsQkO4pQKQ=;
        b=QW+Mr+AEkZAMnMTDeyea0Yn0s4kejYiaQ8pH5mmJ+hg+83lwNmxdS6CfOsWIct82Hj
         iaWl0jeX1rhQejnq5QJ+FFERbkUOqU0fcjlTC/UMgGojMJGoIhrQj9rDgEAY63nWWCaG
         BOpjSzRM33t/qGe+qj9MkoOQxxSp0eOfmbF1n+FV3L3X/lF0HKq0IZdi/vfNdoeVTSVf
         tg3eiTLWaUWWRHmo5G8UOKMZSyprVlTg1q8PKM8SKZ6xtHw5qh9Hno45DYcPAVoFe0e0
         hWNM1MvGq+BfwR44ChoYfYb7pQscuRjh+0Kh5r7oUT2ICsQrx51EgVd28ccnDl+T2Jf+
         2hBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AQDOajB5AXERkEYFQolwVCHVSunjKkQbcRsQkO4pQKQ=;
        b=TglEoWF1biaZklzV7BQNAayuMaKrIpipjtiwFLBKb5gWQ04B4Gr7OicSD+VELN9K9U
         83oOk7ahez5h7STAOXJnGJJSiemcr8EEccBVNKQsuLSIcbtgnyHDuqBEl7/ojlxVLptS
         cN1r5W7Qqg4sVthv9gLK5ZhSkiGWNbURkgPnhVysJLu8ZqbSZ4uKm/l0bKwt5pdgevb5
         eOouJyxtJrp9tiwYkYQeokABZ6i69aWz23VfIkIr3hsitZJYtVspepm+CUNanx9m7b5F
         l7JwUBKu6N2sH5xhn8SR0Wog3YHk2wRkueZPAje3tqzl9JQVmLQzG/vnB7V2DFsSnXAS
         O4mg==
X-Gm-Message-State: AOAM532y8LAxPKqgQwf8rIAZxS3hhfA1WrDQLA2gSsUvRCJUoYydhnTb
	OqXM315Oo17fN4ODXIwSMvs=
X-Google-Smtp-Source: ABdhPJywSdL20LPlA5gHMv4o5YzSbONi8c4NI0tN4P+FTEu87vZlf/XzULad6mB59dugABZpXANvQA==
X-Received: by 2002:a63:7347:: with SMTP id d7mr20209526pgn.63.1605059250754;
        Tue, 10 Nov 2020 17:47:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c395:: with SMTP id h21ls3078424pjt.3.gmail; Tue, 10
 Nov 2020 17:47:30 -0800 (PST)
X-Received: by 2002:a17:90a:6042:: with SMTP id h2mr1267676pjm.77.1605059250233;
        Tue, 10 Nov 2020 17:47:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605059250; cv=none;
        d=google.com; s=arc-20160816;
        b=N+jZLDaB7EySzRDd5X062H5FFLF6O5zZqhlht9TrwEahRYOTf/KHalrz3ornDR3uqr
         m6K5+bSqH2k3upuKxQ/Y9ao5qHqmoTIDViaWncCOowqa2rPD7Ai69eEzbzL3VIlNqkX/
         SDFHsjfPJonAGQuTU6MP2YQwcNHVlAbsrFv6yS9UlPs+KFALM3uVu4SmVvDV/kOs1hFH
         x/ky+yywa7wSkKDN4uG6kvy4EnaVPRfLro34bOcyqJ5NO89YZ7br5hjq1WtUmPwL0s1L
         XVI00XgrsJRETOjD2Bs3SgVlRjPxUEwjGLGXETimy6pbhm6dBNEYe/wGFecte8rczJ+3
         zP3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=FxgG6C8MNarNIrksAc2vZbdhW8ip0bCS/z9vVgyXDNc=;
        b=Kasx6I5PPPRC+LPaXIGy7uGqKbgoupIB8/Iyje+xpN05EARTzgMIMJ8AU2ff7JDmlM
         GskeMlTCqx8JD3iCO1rHrhqpanpYNqcduCUhiWPAbdEbo/28DvEy2oSPKFDWnOa+ZgfI
         hufwxQpUcSah8xJdhor4ffHH5s+iEN8tC5R2zCk77hz8IEY+LIyKNzLwRznh2LwBeYQG
         MI831PK5nLh5Dp23FEL551V6aQSkTdyvIWdGWsiCr9GlCTGQj68nTaFAzsdL8x+X95Gr
         A/GAYAGJRFf4cf5u+Dig2noEyasGIyJ5WVX9ON+rTcADtODvBK2WczIipjWpsfZoUJfA
         g62Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XG1NLhaz;
       spf=pass (google.com: domain of 3sukrxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3sUKrXwwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l8si42858pjt.1.2020.11.10.17.47.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 17:47:30 -0800 (PST)
Received-SPF: pass (google.com: domain of 3sukrxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id u37so730969ybi.15
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 17:47:30 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a5b:886:: with SMTP id
 e6mr12574836ybq.473.1605059249452; Tue, 10 Nov 2020 17:47:29 -0800 (PST)
Date: Tue, 10 Nov 2020 17:47:14 -0800
Message-Id: <20201111014716.260633-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] usb: fix a few cases of -Wfallthrough
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Alan Stern <stern@rowland.harvard.edu>, 
	Mathias Nyman <mathias.nyman@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Johan Hovold <johan@kernel.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XG1NLhaz;       spf=pass
 (google.com: domain of 3sukrxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3sUKrXwwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
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
intentional fallthrough. Clang will still warn on cases where there is a
fallthrough to an immediate break. Add explicit breaks for those cases.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/usb/core/config.c    | 1 +
 drivers/usb/host/ehci-hcd.c  | 2 +-
 drivers/usb/host/ohci-hcd.c  | 2 +-
 drivers/usb/host/ohci-hub.c  | 1 +
 drivers/usb/host/xhci-ring.c | 2 ++
 5 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/config.c b/drivers/usb/core/config.c
index 562a730befda..b199eb65f378 100644
--- a/drivers/usb/core/config.c
+++ b/drivers/usb/core/config.c
@@ -1076,6 +1076,7 @@ int usb_get_bos_descriptor(struct usb_device *dev)
 		case USB_PTM_CAP_TYPE:
 			dev->bos->ptm_cap =
 				(struct usb_ptm_cap_descriptor *)buffer;
+			break;
 		default:
 			break;
 		}
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 3575b7201881..e358ae17d51e 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -867,7 +867,7 @@ static int ehci_urb_enqueue (
 		 */
 		if (urb->transfer_buffer_length > (16 * 1024))
 			return -EMSGSIZE;
-		/* FALLTHROUGH */
+		fallthrough;
 	/* case PIPE_BULK: */
 	default:
 		if (!qh_urb_transaction (ehci, urb, &qtd_list, mem_flags))
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 73e13e7c2b46..1f5e69314a17 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -171,7 +171,7 @@ static int ohci_urb_enqueue (
 
 			/* 1 TD for setup, 1 for ACK, plus ... */
 			size = 2;
-			/* FALLTHROUGH */
+			fallthrough;
 		// case PIPE_INTERRUPT:
 		// case PIPE_BULK:
 		default:
diff --git a/drivers/usb/host/ohci-hub.c b/drivers/usb/host/ohci-hub.c
index 44504c1751e0..f474f2f9c1e4 100644
--- a/drivers/usb/host/ohci-hub.c
+++ b/drivers/usb/host/ohci-hub.c
@@ -692,6 +692,7 @@ int ohci_hub_control(
 		case C_HUB_OVER_CURRENT:
 			ohci_writel (ohci, RH_HS_OCIC,
 					&ohci->regs->roothub.status);
+			break;
 		case C_HUB_LOCAL_POWER:
 			break;
 		default:
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 167dae117f73..eac43a7b7f23 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -2418,6 +2418,7 @@ static int handle_tx_event(struct xhci_hcd *xhci,
 			xhci_warn_ratelimited(xhci,
 					      "WARN Successful completion on short TX for slot %u ep %u: needs XHCI_TRUST_TX_LENGTH quirk?\n",
 					      slot_id, ep_index);
+		break;
 	case COMP_SHORT_PACKET:
 		break;
 	/* Completion codes for endpoint stopped state */
@@ -2962,6 +2963,7 @@ static int prepare_ring(struct xhci_hcd *xhci, struct xhci_ring *ep_ring,
 		return -EINVAL;
 	case EP_STATE_HALTED:
 		xhci_dbg(xhci, "WARN halted endpoint, queueing URB anyway.\n");
+		break;
 	case EP_STATE_STOPPED:
 	case EP_STATE_RUNNING:
 		break;
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111014716.260633-1-ndesaulniers%40google.com.
