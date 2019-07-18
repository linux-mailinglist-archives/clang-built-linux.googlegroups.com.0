Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBSE2YPUQKGQEECM4KNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAA16D56C
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:49:29 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id v11sf31968217iop.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 12:49:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563479368; cv=pass;
        d=google.com; s=arc-20160816;
        b=bcWsQvaCXnpeX13hSdQ8eD5ZsOpNIKY8u68mL+Rxru4HZg2EgOkpPFi5cA2HooxXbL
         cMqIJdAx3zPl+zug4tL5CQ7Cp2xyoJXPSqQ3ZSq9MUNNCf08vYdrg/I6/WS5Rb4h2nVL
         mPJl3fV3NqVpKHIO6R2IRL7RQo8CqIxZM8Plpkr4a6oj2ajMuPRo1mP5cusepmi8IclA
         99yUupmr0gqtWZANSGlgIpj/m55SU1WKN6VHKbdAfvCzDhbHKkZK58p6q7fS4r2VwfH2
         jq7j47H84GwphnONulNaFQ6/8GeuRa12PmzrFN+BtK2lDLDPDZscUgQEd+SLL9yZHZCc
         8UTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0WHbQ5gVTpVUGFvvJLYY5t9mN7JrGscGFoGS3MH1DFM=;
        b=yWKMffF7tQZrpiwqeh5Rmjh0+70BUTkq7FGjupjmCkHVZm5BhDrmDmW/g3OuAcmpZL
         xX53IVSRxvCi1+ceAmKq9lshlnTHMz0zgfY7EyaDITf6HnkjPHXPMHg832ZZf7/IJDeH
         3YCmuwgLrP1WMlId1e1ROXbUq7muJpgLDEa+47Za6xcLZiBwdSMx6brZg4MCw2lhePL+
         fsKKhOTX/SNH3il0YmYtc5x39V6OUxt6m8csoGz5riWIRr5B0FtqFPZOj8CVDHfc1CvT
         fPIOSVxQb5CAW5fZOgbRqrfKHhD7QeurqucuQqbfpdnAfDah21C2USyBvdK7yG2eIbAP
         0enA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="S/4klFkD";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0WHbQ5gVTpVUGFvvJLYY5t9mN7JrGscGFoGS3MH1DFM=;
        b=ooaOHccAwINAfcLzjVToy2qtOIPEsPK91dofndPhVBucUxN1b+c10VD+iVIWgvvsQ2
         qcKKjPHW9g5p3RVA7YUOdDrQxRQtyks7HXffFj8KuGqAdY6y38E8WKqU4vBe/EFfd4N4
         e/mw1wUuHgHQZklL3V0IlcgMjlj8l4j2Nce36HD+v6AodgVsc3RGamy5Y5MH53d/lCDr
         pZV48Wfa3ofqyFvWo8xSlN0f/6q8FRy7rz2+/A8vMSUvB5ssCpX41PL4O1BPgEzozyPO
         ufeZJCX/02OC+vEPKX7CErME8BtGJGGfMpf6xUZo+0qRsVPZyaSXIasB7uGyTFo0VLVH
         8HKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0WHbQ5gVTpVUGFvvJLYY5t9mN7JrGscGFoGS3MH1DFM=;
        b=M8PaZx5ytfwCYp0RS/0H3kQ0krA6Z4RouHeegIoANTIU6JSQzB3+GJYRPl5webl30U
         67RyU8IfaXXGl7E9RCwSHhALt67KxZ+lBJWfbFkXxTGC7/8NPnY+DsVYu0ZMySstjES6
         faaHhH2kDYjLIHOcHwewQxq0y/kaWz38F2O/0vg9DzUrkWVwH8CxQlGfLVHsiuQMfRI8
         jaNj4XApqdXT4ph+tFLFs7iWy8HlvBg6jr+uSTa6Q3xFaJxiGsTQ9dwCCBcBdKRa2lBb
         dPjA+0niZA+2sr+dA7x0JJ9wAInA6v9XOw+OixO4Dyo4mAuwEyx+39bDCeQ2lXbtuTRs
         yZZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQTkXJC905/evJ2tcuyuz+JqanvoiP+SWUaRvDS4L/tFBj1Noi
	mRLHeJI2jh36HAFAF3XGDJI=
X-Google-Smtp-Source: APXvYqzUD8VhndkHLjVTLh1QoU2lq6wdsyInoOsY55VR0v5n0ptxW418XNYCqM8iZkbeCqZnZSoNkw==
X-Received: by 2002:a02:ad15:: with SMTP id s21mr52331403jan.47.1563479368171;
        Thu, 18 Jul 2019 12:49:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:18d:: with SMTP id m13ls7790241ioo.7.gmail; Thu, 18
 Jul 2019 12:49:27 -0700 (PDT)
X-Received: by 2002:a6b:ed02:: with SMTP id n2mr19157609iog.131.1563479367817;
        Thu, 18 Jul 2019 12:49:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563479367; cv=none;
        d=google.com; s=arc-20160816;
        b=wNhHx5B0cyxIGcZC3d4rz0L88nED1tQ3okQ8aSntbV4fd7dbHJGZMWiRhOhkegd3zj
         DWJrmL1HHAKFjxkcLd5d3NB3KK8XrY78pQ4u/VTSAOCE7eVVgiwEqP1PHgHsot+VOBcn
         EKDcgxzVHL3K+FKL32Nb6SIzddNUPLoVUiPk2PkMUMqZycSrvis5ex9PExpTARtzcAgU
         1/j6pzjd67e5kCmaqkHJYUsW6n+idCv715ly/VRNiaNaLGz8Ve7AydSxgHJFBnCin231
         +cM//E1Ia/g7gaPyCiLBeBreTNRhYlDZqTaVy3dFJDC1lSzublMOvNGPBlBYrPXKuv2A
         iuzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LqBcHSVnlAllZiCdAIfktp/f17HTD3kFXRWdIGauFW4=;
        b=Xoerw3Iv2ZUSDRGwLeI8BOGvXaFswJydyK5ZP3aidBdtJKVpHhK41eZBUR7R2F6vex
         utmS3QcQ0AFCmjQ0N9N07F0sNgCUFdLjSWbx5cBlOglYVZyE0kh2NP+y7iJbT3aIBySV
         A+lLlHF8e1wWRGpZDCKaTEBRQmqOCY2uznz3ikJ2LPVYRSDGndQnkhXpPRt8JRkARgyK
         /RVrc7Rdxm+3XXyQoct6RnebEACTj9jsFVeaqc2LChCz9TpAcMgGph4t7Hx1ecQsfJTb
         KUb6JPJS9jgLntWGKgjvyoX2K+RbMnEeRxe2RNlPXFY6P/fnEnkSroL2U0M9EiUJ+PhZ
         orog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="S/4klFkD";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id t12si1148596iol.0.2019.07.18.12.49.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 12:49:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id r6so24323211qtt.0
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 12:49:27 -0700 (PDT)
X-Received: by 2002:a0c:ecc9:: with SMTP id o9mr34822037qvq.100.1563479367148;
        Thu, 18 Jul 2019 12:49:27 -0700 (PDT)
Received: from localhost.localdomain (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id i62sm13548544qke.52.2019.07.18.12.49.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Jul 2019 12:49:26 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: rafael.j.wysocki@intel.com
Cc: robert.moore@intel.com,
	erik.schmauss@intel.com,
	jkim@FreeBSD.org,
	lenb@kernel.org,
	ndesaulniers@google.com,
	linux-acpi@vger.kernel.org,
	devel@acpica.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Date: Thu, 18 Jul 2019 15:48:46 -0400
Message-Id: <20190718194846.1880-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b="S/4klFkD";       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::844 as
 permitted sender) smtp.mailfrom=cai@lca.pw
Content-Type: text/plain; charset="UTF-8"
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

Clang generate quite a few of those warnings.

drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer
treated as a cast from integer to pointer is a GNU extension
[-Wnull-pointer-arithmetic]
		status = acpi_get_handle(ACPI_ROOT_OBJECT,
obj->string.pointer,
                                         ^~~~~~~~~~~~~~~~
./include/acpi/actypes.h:458:56: note: expanded from macro
'ACPI_ROOT_OBJECT'
 #define ACPI_ROOT_OBJECT                ((acpi_handle) ACPI_TO_POINTER
(ACPI_MAX_PTR))
							^~~~~~~~~~~~~~~
./include/acpi/actypes.h:509:41: note: expanded from macro
'ACPI_TO_POINTER'
 #define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,
(acpi_size) (i))
                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/acpi/actypes.h:503:84: note: expanded from macro
'ACPI_ADD_PTR'
 #define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t,
(ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
                                         ^~~~~~~~~~~~~~~~~
./include/acpi/actypes.h:501:66: note: expanded from macro
'ACPI_CAST_PTR'
 #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
                                                                 ^
This is because pointer arithmetic on a pointer not pointing to an array
is an undefined behavior (C11 6.5.6, constraint 8). Fix it by just
casting the corresponding pointers using ACPI_CAST_PTR() and skip the
arithmetic. Also, fix a checkpatch warning together.

ERROR: Macros with complex values should be enclosed in parentheses
 #45: FILE: include/acpi/actypes.h:509:
+#define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, i)

Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Use ACPI_CAST_PTR() in ACPI_TO_POINTER() directly without
    arithmetic.

 include/acpi/actypes.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
index ad6892a24015..163181e2d884 100644
--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -506,7 +506,7 @@ typedef u64 acpi_integer;
 
 /* Pointer/Integer type conversions */
 
-#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0, (acpi_size) (i))
+#define ACPI_TO_POINTER(i)              (ACPI_CAST_PTR (void, i))
 #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
 #define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
 #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
-- 
2.20.1 (Apple Git-117)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718194846.1880-1-cai%40lca.pw.
