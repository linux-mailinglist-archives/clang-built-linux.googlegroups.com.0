Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBLVQXLUQKGQEMGCDE2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 148286B50B
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 05:38:24 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id g2sf10734113vkl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 20:38:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563334703; cv=pass;
        d=google.com; s=arc-20160816;
        b=K7XPY2PugJBVaFIeevL0HZrYelqe2+Iwjkd/PlSPE1+TEI6cHCIUPW2hZJTYv6/Ekv
         Zwl3ULsbj+H4xYEQ1tzfB+Bm6/67PSsVe7oPbglxvx7STQZao8Lb769FVAm6MMLtZQNF
         rWdG6SZKqEllk8A2xkNMRRGJ3gPyowR8mc+1TnCOc5yelpvvhEiE+0HHABF+qlt+kL4U
         ixqK1GT6DHhVXzGL000CQ3wzV+JgMeLYrdUkSlfSo1jHGubSahMA4cQSO84KF7IFXXvi
         BjsPvoCtsXsME+kwtBofyMogM9mtLdDRioH/Z5wNA2JlBm990Ca2rI7N3xA3iXpiUbgq
         yNGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=iu8SXH/quAoGgP/9PcSuvdjhWW0Rww/8e+DGNJbYnEw=;
        b=AEPjacW9o71dcosJzkHBRzVSnsEES81WhdWP4nuAtoMnhu2pkGELKNKiifQJDf8O9K
         5z3E89cn/WRVrJqrrQxcdfSZ4XmyPLpR5Im8XRWpnyD5iYdhqKXLJfqNH/dodgPqMr/4
         fV/Z+eEhqFftJs5MOUTvW1qVwg3EIT6tw/8xinHp5hWmCOt2eXtYrcFl95UJ6fgkwO3s
         UT0HuVAMKf1hmCnI4okg5QE+FB4soa9AOY0NTGL/QAHXjjPwEMnIn4wm3ya+eKvBraRm
         WxsJhrji/LYQpJUTxKtFeGohgGNDmTi6GVfsQzG/+C6AIMW3j5W63mwYjzP+mgT2tL2b
         8VsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=lQP3Uj3z;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iu8SXH/quAoGgP/9PcSuvdjhWW0Rww/8e+DGNJbYnEw=;
        b=NWBkSE7rbf2W3LIjWSsjp9fY8f3LMN2dGaqJGWCAY5F6Po3fTcp386dPskZSkqOtId
         m0oKlu0SWym9sX8EXpreCXH6dj8xYJF2/5OY46hdQFmOBOJzUnxg/z7bDOYqqRzfi0Lu
         blRzscMRuPDdgg8uo84AY6k7owSQh+k+RM10kdi/lfO7gkDqxBVJ1rI3taG/u+BRs93O
         juJ3qAAYBWJo7DQA6msZm4yq8qaY9grZWo0vEV1H86SaXuqHPOUuYaZYad6SdnUuvxOD
         RPlHHC4mHYrDNhQ1gvmdyF7Em9PLNAUKAIkUZOE4D8zdE41pqc8AKA/JxM0vkND6NpQh
         ZnDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iu8SXH/quAoGgP/9PcSuvdjhWW0Rww/8e+DGNJbYnEw=;
        b=LV0lSxsgDhJ472JXp0vf1GnA668nNAObtIqW3uG1uPmzY8cJHGKDywLlyZLZ6VIybU
         pw6bAOZ0L/5gOCF/c75df3sxubcPSlUD+xY8n8EqKui7Cnb+WSt9UeYLmFLFAjhcYq64
         DKIS34d9nEnrXPe3BNbAsa8lTyJn+goQYEllp0ngtCiOMQGM6S+Wrdd9cY7NjiUOG8Yh
         fPOx3Fnos3+nEP8lmBXxYjMIJ5svwO3+dNsTD456WdXzKE91bdW/mOsBb+Z4wLRT+G/b
         Ea4CVx3XMU5K2oKMSixmc1PctUkg9vzvK3/OgCuuCob+ZvOHEk0T1ziQBRjz94pYVwPI
         8dNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvmj8PottFZkEj2+euX+azFfa5QpfFTGnVL8vPFUJTwDWxrCje
	6nmIN6DxG5ORxADi9QNqMz0=
X-Google-Smtp-Source: APXvYqywprSN0ulUV04/HtNEOlXaDb9fQMSoCkSRYgYIh3RJpHu52rBUt6RTGZKExOUyLBBOLsVOEQ==
X-Received: by 2002:a67:80c8:: with SMTP id b191mr23657316vsd.113.1563334702944;
        Tue, 16 Jul 2019 20:38:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8944:: with SMTP id l65ls2814518vsd.0.gmail; Tue, 16 Jul
 2019 20:38:22 -0700 (PDT)
X-Received: by 2002:a05:6102:105a:: with SMTP id h26mr24459879vsq.185.1563334702664;
        Tue, 16 Jul 2019 20:38:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563334702; cv=none;
        d=google.com; s=arc-20160816;
        b=jkUlwXbnL2TuipFat6b8xmpgrB9kguUOuEoLKvax2NBz7ZpysroZFsPq6IcPx1+kO4
         4JLIJbRx82RjNAIhCZfK3RO/bUJUe7unVeBabWhXXa63ab46BL10FnIr4QoJroxKkvFe
         VepAKDQzP4sLqeCyCvRSgcvi8bHgKezeG9sSGBF1OkcO0XXQfhQlakLq0apMwLZD/UYn
         3sdA5BWLkscTQFJ5oSmW+9Z3YgOHGw4QpQKIpfgUXsCtCLPVrKOhKftXGqJ6GmKQ4aB6
         Ak6eG4YqEZAgFXE2Vtxaugn/JygzZ/3V7pX46ykr/kCGzxMMN3wP+Qq/8yS48NhH8xrg
         IuFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uHmT8dIDMxkmQnyhyd10BlvmdAMnrqetakFEtunVpYc=;
        b=RFxf/OzwxphqZDBsocTvYzWMEmXf0FQKhqALdAqsqesgs3OkIULzJL+TcOrqsniAAB
         Fl47G3CrIEz1PRmzOaPcvPQx14Q8K3wuXGkeHhYsBgJxbdLNXzqQx6AicW2k19mfC3yb
         OUYbxUsQZpN7o9hC3ZmlA7qxPFq3vSlWJgApYFlaeXwGu+gK0D//YaVec4fMOCg3Vhmg
         MueCgJ13mXPmzEI7wbOkiLgGTwZgIfyemZ35FUIyVRFCRLGcdhLtW8ba8ZpnSV0u6Xxj
         SWwTnWVdSbXsaISlLL3uDX5dT77J9Oz7Xkziy7qa9ZbQuoOurC34i0wTkp46c50mbq1J
         j9vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=lQP3Uj3z;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id 63si1274096vkn.0.2019.07.16.20.38.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 20:38:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id t8so16398662qkt.1
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 20:38:22 -0700 (PDT)
X-Received: by 2002:a37:98c3:: with SMTP id a186mr24560759qke.498.1563334702197;
        Tue, 16 Jul 2019 20:38:22 -0700 (PDT)
Received: from ovpn-120-123.rdu2.redhat.com (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id y9sm10200160qki.116.2019.07.16.20.38.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Jul 2019 20:38:21 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: rafael.j.wysocki@intel.com
Cc: robert.moore@intel.com,
	erik.schmauss@intel.com,
	jkim@FreeBSD.org,
	lenb@kernel.org,
	linux-acpi@vger.kernel.org,
	devel@acpica.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
Date: Tue, 16 Jul 2019 23:38:07 -0400
Message-Id: <20190717033807.1207-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=lQP3Uj3z;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as
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
is an undefined behavior. Fix it by doing an integer arithmetic
instead.

Signed-off-by: Qian Cai <cai@lca.pw>
---
 include/acpi/actypes.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
index ad6892a24015..25b4a32da177 100644
--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -500,13 +500,13 @@ typedef u64 acpi_integer;
 
 #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
 #define ACPI_CAST_INDIRECT_PTR(t, p)    ((t **) (acpi_uintptr_t) (p))
-#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
+#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (a) + (acpi_size)(b))
 #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b)))
 #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
 
 /* Pointer/Integer type conversions */
 
-#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0, (acpi_size) (i))
+#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, 0, (acpi_size) (i))
 #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
 #define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
 #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
-- 
2.20.1 (Apple Git-117)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190717033807.1207-1-cai%40lca.pw.
