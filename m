Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAXKUD7AKGQE2LLUXAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5EB2CCB15
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:51 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id t185sf115628oif.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956290; cv=pass;
        d=google.com; s=arc-20160816;
        b=pn6ipaQEV9fiDAaFm/6Xg6uxq5AZSvOXBoUBmMRjVZiP5/+84iemidWhkvwM+wRCHd
         absNwioxAxP94LS1ZpDKGP1IA3zHmhoTCaFK8Gjqy9XONUDFFtWCQuo1LQ0EwZOKVJmr
         CLyQbp93oyhnRLodkmcQmzoHH+WY9wUKIgQaY3UlWC8n8cNUiTKRO5TwgUt93ZkTVWlz
         zVwra++pCdn2MugeW9sxmMOMRZxbX0PC6DOEqf0I6Ox3RghPDFRB+dShukFthMRTiUkS
         n1hCpGPqDR6CVb7uU/O1ie/Ds40f0Zuwsma/qjVAfIQ2M2ojc/oWQfYlLMizwt9L4gk0
         Xe0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IuKXGeAzCPMGft9s+TFyDsjSsapPUbvmXYpxA8wQB5g=;
        b=L6sV52j8VrPeGbfM1i/hIQl9Quj/UYX0cOZk/g0Hf8Az82SDOEyBsF6lgjW+FxrHI9
         Tf8/1/lookhLIRFhJUPQT7PmsqcZo32saIediB2/6wA46R5zbs21S5iBI2Cougtk5c8i
         voJFe3f7MGDCUAmZvNj0jHiinKrFZdOLD8OqiaBgjfXjxMYdcBcXICvzBxHiezwu6Pjg
         89ZkV9uJm+kcyYQ1ZHK25sBotR4rfpmXP/3SDIP+JLK5VkUSVycCWNb7YkeY/8Xy179a
         FUCJc9Os00Xl7HS85nnHrHTDIJD7HD4hKe0wpIITeQkNmxNI7FwexYjpJ6+aN+PtZJEj
         9Fqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=J+UiHoEE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IuKXGeAzCPMGft9s+TFyDsjSsapPUbvmXYpxA8wQB5g=;
        b=m0sFudeZAYqeTkpMuSbCHIQRAg+PB5ZpDnOi9qn+RiJIwHZNjddeu+Hag7Hr58mNt9
         PzA5skKg1nWsD/Ov4vM5Oh/6Y/LIORz0LWXaixVn1HQqV5jEzTu3abNmOhtG9g6uCpAu
         +e8nyNutpNh5Qb9UdvcUZoeaSGVE+bZPXYGKiLyA4ZVuJkNqcw0gvNn9KcSHlD077Yzv
         9pL9XOrZUNbNbqkv8r8HAIBmHwd2Y6MdAPuc9L4m3AZYMA5/rTJCRM4U/GMz4YsSRgej
         oSdVpADRTQVLOxTFh79s+h+3U02WeJfTjPMIxW55GC94zxH//FZVHhcGZ1SqYi2KajUV
         qzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IuKXGeAzCPMGft9s+TFyDsjSsapPUbvmXYpxA8wQB5g=;
        b=t9UU9u39Ot3sxyY6iNcJcI88BzfER7bsyA8k18IPsMiP47t/tHY372M9QK/o+Xu4RN
         xeKPy9+r2suiNTbaYOqs71yVegGtuHB48x2GdGWgbiQCHZgL5c1sU3PMkCpvr333onZJ
         khRJeLjkbcDHosfR0Ulvy0YL/qDrHccc1Xny00lAWGcuI6xVzR1IA8M56tuEurXYrxSV
         YBpht937Ry4fYSQ95jhbnmXcupeIprt2KfnnlBlwhAdkzlB/bVSm430uaLLzrGNpwXuO
         IC6fvsGrJ8BCA3TQYDafQoFmb8IvS9dipm575+QKzvRMKZ22H7HRp63x76lB77twoKH/
         cHVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MKd1vGb6pq0tEbvX9X9/d9AD5MhiC2js5uX0pszGynZoRBgdW
	V84ZSlCYZJZEXDOVKDe7dW8=
X-Google-Smtp-Source: ABdhPJyL7Jr0bJCDP49n11f9LSi9egYTrmB8x4JR7kr3+gx0ik1z1lokczEK0/Qrc2va84vW1167WA==
X-Received: by 2002:aca:4108:: with SMTP id o8mr313112oia.37.1606956290544;
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ca91:: with SMTP id x17ls246756ooq.9.gmail; Wed, 02 Dec
 2020 16:44:50 -0800 (PST)
X-Received: by 2002:a4a:a8c8:: with SMTP id r8mr408536oom.9.1606956290119;
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956290; cv=none;
        d=google.com; s=arc-20160816;
        b=AsY/7x7winSfctqF3mk1z+sQv8ICdaexhxitR4PP0N67l6XwzDRbfCtiKLMBxLCofj
         +OpEAfQRzWJW45ycyqYfVqMDl2S/osQh5EY29Z+ojsJQLiDqR6R30sPfgF1tAqz4brTo
         Ij5YcMSWf8OqhLZwrK54ly/ps5TnVaWurg91f+ntMRp3ADWLbiYTwJsKmIEd7np6jO0x
         /D+VIrmFeOk0qSY2c1BxlK42PGmvpO2ZlnUgR8wfYFPqstq/cHlbUkoj6IxkArSE9RDn
         QptjQrLA+5KIL67ph6N9q4aMscQqkQlvgHvRgAUgQpFbM+S9/xh+5ZphMqgFZVri8/Et
         aN8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=momj+ASHgDWNBxEWCpbYT3s2xBxAd5KeNj7yfrmXJ4k=;
        b=t8IUpcXnOfKW7xiRF3090LyQ+GaFCRZ7Dkc7GuMVdFd3BZ6WZTCxOzr7Z7AXSNXjwf
         01zmSLq8gFkxOjnHuAAEI6TLpk6kvDLHSs3BK6bJYOYuszRQsp/gFjFGKrWTFMx8Y2kW
         4V9PNCITYMrNl4tltRvM00G7byfbcLyrmAv6OqxC3cxzZnSq7yasR8h7NRXKxOXUIrbz
         dfvYMJoOMREINsexJPPcRiWYnszNLpYm92AeYHDEcRA5gHiuOkXCkcJ/Wl/cv+GO7wKQ
         SBqgYRewKr846KHhn2vrwtAkI3CpFppFoSWzGh/76lNLnR++EgNpkORRcT7AoqmXsbBj
         ReHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=J+UiHoEE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id l23si34279oil.2.2020.12.02.16.44.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id m5so130372pjv.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:50 -0800 (PST)
X-Received: by 2002:a17:90b:3355:: with SMTP id lm21mr527519pjb.115.1606956289515;
        Wed, 02 Dec 2020 16:44:49 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y25sm231806pfn.44.2020.12.02.16.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:46 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/7] ubsan: Disable object-size sanitizer under GCC
Date: Wed,  2 Dec 2020 16:44:33 -0800
Message-Id: <20201203004437.389959-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203004437.389959-1-keescook@chromium.org>
References: <20201203004437.389959-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=21c865d368e205cfd26bd9d13e0f9f89f171384b; i=L4GcuPKCev5MNqQc0RCGb8oc+Sj9uj4IyIr1ANDlbWc=; m=PBJG7bVEbrc41Z+BEj2wLGOXm7yrIzzNY1qvha6xoa8=; p=jGS9rva7ilUpon3Qx1DX+0oWwKBNC+al8p6dZtl31EM=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAl/INPMACgkQiXL039xtwCbIUQ/+OkV vjffTNt2uERV7vMRuPwpM9Ir02sn2AX3wrTDxTrLYtPKqDQ6Nv0c6If7kt/ix1Z9j6iPVez1vmnT7 N3DCeyorgb97zQFmYBlpuyEHsIix9bA2anZmEsjoB1l0ipZbjuPM2TiXeD+MppW23DcZkVyrhwXe5 ztJkUJ4H2yark/GEYoKKRqU99wCbLNkcd+UqpOEKZramY8SmOXaWZOrARgDtd9mEWSvQ5ZU0cFQxV cmki5bWEQ4VjPbJNFbICL19bQ67TR/fhZk8BkUbW0+YNozVxOCgkRA64YO+CZHnw3kUq5fcP0y/Dl VVqQ1VAvlBXwSZxjrbZxfdY7PtVGDkIUwuWqECT0wgn0Uv8KYFVPABjnI379t1+JrPiQ338pGRCIJ yL5xJCYeuZOKTFinRoko5o9qODMwVFpx/3CAmafnoItqQ9mrD9Oo/a3sCliuPaXSD1Dn6+ISruKdm s1Tv5MeTaEMHnAnsCgr7ZPExglNSNE2hhlciEJhqcOsad6qivPuIoeVt1qIQxfHMhZv56BH15ndSZ zvn0HcwnYU87shYo5CmlStdL4qMi+TaX9t8zUmiAt4mgDgWnzcD9h04B5WKo6Uf0+AaaDUjJd+ZmZ BuA2kGzeINXkrbt45W/br+R2YMpnWBFPx8go/Psajs84OaxalYGLC2AGy0MzUeVQ=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=J+UiHoEE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

GCC's -fsanitize=object-size (as part of CONFIG_UBSAN_MISC) greatly
increases stack utilization. Do not allow this under GCC.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Link: https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 05147112b355..4190a99b1eaa 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -113,6 +113,9 @@ config UBSAN_UNSIGNED_OVERFLOW
 
 config UBSAN_OBJECT_SIZE
 	def_bool UBSAN_MISC
+	# gcc hugely expands stack usage with -fsanitize=object-size
+	# https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
+	depends on !CC_IS_GCC
 	depends on $(cc-option,-fsanitize=object-size)
 
 config UBSAN_BOOL
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-4-keescook%40chromium.org.
