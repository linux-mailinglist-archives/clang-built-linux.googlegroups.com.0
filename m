Return-Path: <clang-built-linux+bncBDU5DXUG4MFRBIFC6XXAKGQEF74PIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 339BE10A1E6
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 17:21:53 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id s26sf11473608edi.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 08:21:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574785312; cv=pass;
        d=google.com; s=arc-20160816;
        b=o7xPPkWBfgEZHAuOGLIjx8+wXqmjojcR4fV2O9Vfr73QwlZaz5Cubg9PMnXoZbQAe3
         AsG2d9YQV8oTIqX/I7a7vMNQqaolc5Ig2CqjWypAAPfmv7hvni/KTmzXepwkHqz7cMWy
         fAZaHhuU3MAy4UcQpc7RUPtnUn/6EP/wkdX5RQx1PWSGmQFBvLOsOhQpRgeGLzi8mRhI
         S7iqowRMOQcyu/amwDgx7NhO+po7a7mKlopECfmm87cKT7SP9ZZ5C/VjPQ9yl7kYe7Ff
         mEysf/69PMk9uU5gVFD6PCKSbCzj3Y/2ZgfZGLefjLZy8n94hv2M3xpwtBvAkghxQ+t4
         6uTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=omciqiO3hPrRKnUZRWg7+Rc68mAkySzpaB/jtWza/zs=;
        b=BO0OjinSTne7PWUdUiIl1YSqr973dNLgSInXQpbvbz1lh61aD3Y0I3Q4/xaJmVecgK
         4AQMGpvVJEdbnb6Ol3fdniHfjegbV0vi2ffahFacTNpiOCThP45Wojc4Hou8X/mMosa8
         Wob8p7+2oHSSsazH+uWzsK+aqjS5xD1/uFWzIc5NfGtpLlUyWvyO0RM3S9hleZzDFtaz
         HS7EV0zV/t+cqigUIFYOweD9Jx/XsQP9E/6jbdxFtpW6wRK+C7wX1ToDz/utFzl2y3Pi
         jTPiSDNbdukUhbBlY8GohkKHVbVSuszSQsEGOPitCOS3aeAYqZ+O5mNFwiwKtnXTqnnc
         gbhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=omciqiO3hPrRKnUZRWg7+Rc68mAkySzpaB/jtWza/zs=;
        b=pbbk5ftPaT3qq6JjQNkWHf38w6ZltRutd9MpCvBCnkiL+eHZjgco6VZUBZfmV9bJnm
         hcCJeD40qIKw8val7Vv6is71yIgryYeA6JXJIwfvYB9FAI5kioO6DkRvAn+UV82JhvAY
         z755cSLYZIqAliXpN6qnUAcCuN0C8Q/ayyJKzLPIZBuF9Rz0G0928vVPlBn1VP/XKeEu
         RlnD3ML8J5nVcuZW2iFiRPwI0FGcQU353ejdXJBMUAwdsaOapFhleeiX5z0n306ZTH8T
         b8W7gl8FCJ0BQJB3a0zSiP+TlFP6PgIP4k9xnMSkD55NaynW/LMwDMueQBKzCfmv5VLW
         WxHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=omciqiO3hPrRKnUZRWg7+Rc68mAkySzpaB/jtWza/zs=;
        b=BSPccef5uwUZSKAL6yIEtMJNWrX9OIaYVTxts0KPTnwgWPgNn5E5CN8LlrqfF2Eu2H
         O5u84keSIIeyxhUKa2d1l68bTI9eHqRSrDecarrf2RZlA3GpPgp988jjoz/tAcYHPP5Z
         6MsITC5nKU6dtvIxkLlIYYlZevIljDYpr8FFaczz86aFvV/bv7tD8RF6qPm4bdLRqmo5
         7cQzjb5g2j6z5oZ7KfkFOZF7AG/V0DTV+j+q/y+vhAB2XRuzeGWgvPJ0ihsOWB0XHh0c
         nNeOrN0bSuh/o9RtGU2CvME0llIPnFBoKBhBYSWZWFocHwW1eBE6wyUDlKBskyQib3EQ
         MYAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXNVWUJBsxtoMsIcgGdE2NBvgQbiWL0SOeXptx0I/uMnMQWg6DZ
	/y8tOL23eQxO5HPTb8p+JhE=
X-Google-Smtp-Source: APXvYqw6dhMJlHrWRUArHM+/k2tWBJOYreOZ0NJdbzaSSNLzPxo8Ze0elN78U4XRgCRIEh77+JEBKA==
X-Received: by 2002:a50:f081:: with SMTP id v1mr26313128edl.131.1574785312874;
        Tue, 26 Nov 2019 08:21:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b245:: with SMTP id ce5ls6690850ejb.13.gmail; Tue,
 26 Nov 2019 08:21:52 -0800 (PST)
X-Received: by 2002:a17:906:b30c:: with SMTP id n12mr43499761ejz.96.1574785312357;
        Tue, 26 Nov 2019 08:21:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574785312; cv=none;
        d=google.com; s=arc-20160816;
        b=aCx4YCmx13pgADdUXbAA1TS/NLib3eS3ZunSJ4NfYGhPBJBAuKwd6uPmgYvwg/ggNK
         44JKY1Sr8oHofS0JoN2kQ4YRYvpbedxTry0sACqHmuC3Jac36udtB0Dzeciu64s5VtGd
         z97uANI1QK61fkIEcNg6FMyQLbvn1xk7xXBUSVIIiM/72wcAu6l2AfFY0CW27cYaQMXS
         T7exNZsWSW2W6QGsCg1+YXoLWcbrDNmZEQNIIdPjfWmMeq2xLsSCevTneYAA+zUkuiM6
         /XhbRj87gcKpIh1TRJn9gcI4pJj3lMFuazi078/Fg4G/ez3Pp1ORl2IskkpCurYmzi0Y
         +WOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=//dTBCakTAbndOtQ9PTjtdetIC38UKdESozZODOT26A=;
        b=sLwkzKE/KVC15bYv9UziTYnB4nvtw4IZmisb3jYr4jiQy0REZd5OSoOP3ss78RZOA/
         t3G+yIMNcH2q5odwvQP+nbvBpMToRXXCyGD5lafq3fumaDrkn1hoUMalV+L5etInV/o3
         F/8Clik0+xOkdxY0X7vitOI4scQo/Neu3OQigIE+dFeCni8KQEeA3buXqrjhn7U143sp
         IUzTVCCcAf+fDniyROriszwHUi1stEshbIYC2CrcAdj2wBbR41HMUM3i3lv/8jxgTk3e
         rHaOT34XlG3PmilG19dlO6oFuCFKO2SLHpyyplmg5a7RKz7d4kZfvdcnzNxhebG1RKps
         cVSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id v57si428335edc.3.2019.11.26.08.21.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 08:21:52 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <colin.king@canonical.com>)
	id 1iZdSS-0002hL-31; Tue, 26 Nov 2019 16:12:56 +0000
From: Colin King <colin.king@canonical.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
	=?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
	Sean Christopherson <sean.j.christopherson@intel.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>,
	Joerg Roedel <joro@8bytes.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] KVM: x86/mmu: fix comparison of u8 with -1
Date: Tue, 26 Nov 2019 16:12:55 +0000
Message-Id: <20191126161255.323992-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of colin.king@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

The comparison of the u8 value __entry->u with -1 is always
going to be false because a __entry-u can never be negative.
Fix this by casting it to a s8 integer.

Addresses clang warning:
arch/x86/kvm/./mmutrace.h:360:16: warning: result of comparison
of constant -1 with expression of type 'u8' (aka 'unsigned char')
is always false [-Wtautological-constant-out-of-range-compare]

Fixes: 335e192a3fa4 ("KVM: x86: add tracepoints around __direct_map and FNAME(fetch)")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 arch/x86/kvm/mmutrace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kvm/mmutrace.h b/arch/x86/kvm/mmutrace.h
index 7ca8831c7d1a..3466cd528a67 100644
--- a/arch/x86/kvm/mmutrace.h
+++ b/arch/x86/kvm/mmutrace.h
@@ -357,7 +357,7 @@ TRACE_EVENT(
 		  __entry->r ? "r" : "-",
 		  __entry->spte & PT_WRITABLE_MASK ? "w" : "-",
 		  __entry->x ? "x" : "-",
-		  __entry->u == -1 ? "" : (__entry->u ? "u" : "-"),
+		  (s8)__entry->u == -1 ? "" : (__entry->u ? "u" : "-"),
 		  __entry->level, __entry->sptep
 	)
 );
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126161255.323992-1-colin.king%40canonical.com.
