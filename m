Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBUML37UQKGQEUV7OJ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F738724D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 04:43:31 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id x18sf24935764otp.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 19:43:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563936210; cv=pass;
        d=google.com; s=arc-20160816;
        b=rdLpmlBejNou7hkVJ0w496WmdoUxaIyoz8iOukMsY4jaldY9Qj0bi2ScE16UGIwe/n
         4tvCwJkruIN52adSypn7cku80ArLc4Xl+8ieJc8uG9D8C++9QtjMBfib9+FJntCIn0y/
         RgXPW7Fw3IkJpStfKjQfJholsxuwD/fgelvu9kcPNv5d4kQ9A1nSB7qlFyFdo5ucOXwd
         CYlCY/WkKqaRixzHtHbyOLJvLRMDHnDVEdB1hLX+etG0DuRsdSBvGedzSjLMBw2m+xkX
         Ri85shXlSNiNTxykon2CPAplieJqYJDn3e3bU0+DPM7BFbt1MzKeNdBCmX2fxdAw0HeH
         47qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=y38xL3dNANaoF+qMAv+R+OdSymisoRTm4a7+4IgEVBU=;
        b=tBgKj2ut8j23gmL5Els/wddSiDN/sPLQx5iVCbpcHtSizCih+t1mjOUBjSrTmjxSNP
         vxHxigLF1F1Q789KplL9/pDCF7uemCFof8kGLZBa0HVpXfBrr4LB0hzi3R58ijaZtchP
         jrrtfXymf79M+TEY3nRXLgYnsNfIa7YnFVUh4f2kbpPb1/iwXlhzPv5pPia+7IuVurFQ
         Lr7GTRrEQdOUTkxcyV5Te8vCS/ZocEhfzEMPtFnu+UEpeGO/elec0VDtsN9RPzHyB68/
         GHEnkQwUXlAvF+3yL8vswD3mt/SuGcYqMtsFFkn+lFkR4yZOOQC/61Vi33pdAjjitoNg
         6rEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y38xL3dNANaoF+qMAv+R+OdSymisoRTm4a7+4IgEVBU=;
        b=XlEReyCsdWkt0/8Nk/BbVolz0psGktMwUHWCFPRL9cwPC30YtniKR9mHx0soH1q2uj
         wUljrVWeefGPtrPKhFZnplF/+Nmf3E5TdDqlpyC5q1FGX+aaAZyJgiDmkJ5CHHdx3o4P
         FfTnCIVYiaSvfkykAfkC4rbssSZj9U9dBOwVLbHnUyEV9QD71l23ycxROxJVBdLx29d/
         wGdXS5x3E3+Dh1xRsq4qsQ0C6uKzAMvGfF5G+4dRmXD6cErw2fVcPqdGhthEiUlQhUzX
         sT9MkgCiqThBR5FlZK9/MSkN5DdiaMfXBhgL/Tq0Gn7SefRk9YbxGoIHmzlCm0TwUkz+
         wNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y38xL3dNANaoF+qMAv+R+OdSymisoRTm4a7+4IgEVBU=;
        b=Cub7oP95mYq40YA3iB8+iEhmB+PPbqNqyZ6slvF4hjcGx48pxcgBQ/tNEjEJ54sNrM
         m1znyANPGAqHazyDxJv6z8cxzIM3ltK9SYHT+Oo5eS4y2BpV1d8RlVGqjfjQF49bM2tf
         O/7oGd3i0SaoVuqrnxVrLggJVnNhawiI2tt9okUGhuCPrdiwDQDT2L5NROWtN0zMSN/R
         /E3EtCqdK3+zio/GdJdW3xB7EYlscwS6ltx85wODWYnDz4MFCnqejt04A6F7FYgwnoR1
         m3ggXo47sGM7VBHG4XXoWdV1TXz5Nxc+pqTEXPfh4PFktG3g7x6liQ71FJxS9ZwXjW0x
         w4OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRb4z9mJwcwxme+aKGHd58WDWRW2npv2xG2sGO56jDbJe/PlgL
	lcpbEMKKMZzDlUbdqkSOTsM=
X-Google-Smtp-Source: APXvYqygX4QUrPrAyF+gubS+QERkDtoxxKdq8gI8OSRZmxCpGobzeToG2Cc3Aw9YMavAgdTE+TlaSg==
X-Received: by 2002:aca:1713:: with SMTP id j19mr38185645oii.63.1563936209801;
        Tue, 23 Jul 2019 19:43:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:eea:: with SMTP id 97ls8546322otj.13.gmail; Tue, 23 Jul
 2019 19:43:29 -0700 (PDT)
X-Received: by 2002:a9d:6742:: with SMTP id w2mr5048332otm.371.1563936209584;
        Tue, 23 Jul 2019 19:43:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563936209; cv=none;
        d=google.com; s=arc-20160816;
        b=xaVn8jkQKWYU81u+Yg3raEkWVPUYzdNQG8/iUfYrn9eQWx+6T9x4gAzwJqR2Pobkks
         99qEeFnNTvESpMndQ/Uw5GJWW4yW4RSenIGiRoZmrqDJvcXuQZG2/kYrtQBIUhzGKc4Q
         osccE550uVFsnPHPmDpKQkwvcVPhCnRBFV22SJsFl8hRA1E42/A0r+LH3SSGFZUbHYN1
         7zuftOiMJk8C4k5AkBV0MaqGNnkCSxI5GWGcKFSIPf1IrZRjkuvzNfVdToX8LAyiEZCV
         tjP0UUEIIaYteaFCJVPlr5zDN7J7plWymWg6Ur/HaQADjQlV38WuMTxirP/TIqO/daq9
         6rAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=FGppZHh/pz3JdfEydh+FJPgJs6XqYweFLZF8Ty93LrM=;
        b=I04+MT9tHbt1TvScp82MomShTqTJFcl46kJpZAjd5g5ywAKZ95gElzQ5IFwp0FLgjz
         s6dKXuSvB/N1fMmGPjq3hU7cYhNe8uuw0xPtPvSTazAPPklgGxtUZ+XTrh2kUw1u04ig
         xeL7hPNV18fd5xSyBFMW0uanwo6bq+q4im4xacLiTSqnZX9d5MsI08dgxD9cTlShtTXE
         m1c53d+OTngWpwOfmDFryZiNA8XLVwNuWzYLdMOUvL5zEVaJWYHRuCRX1+jNhFxHMq1c
         DcHJhoy03+MxOgA8OjsZZuP2gPirN9jx7OVN4kHYQG9OH/i9shox/303ReW8Uj3wg1r/
         zhyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id q82si2265185oic.1.2019.07.23.19.43.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 19:43:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 340F7308212D;
	Wed, 24 Jul 2019 02:43:28 +0000 (UTC)
Received: from treble (ovpn-120-73.rdu2.redhat.com [10.10.120.73])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA48D601B7;
	Wed, 24 Jul 2019 02:43:26 +0000 (UTC)
Date: Tue, 23 Jul 2019 21:43:24 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724023946.yxsz5im22fz4zxrn@treble>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]); Wed, 24 Jul 2019 02:43:28 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:

>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable

Looking at this one, I think I agree with objtool.

PeterZ, Linus, I know y'all discussed this code a few months ago.

__copy_from_user() already does a CLAC in its error path.  So isn't the
user_access_end() redundant for the __copy_from_user() error path?

Untested fix:

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5fae0e50aad0..41dab9ea33cd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1628,6 +1628,7 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
 
 static int eb_copy_relocations(const struct i915_execbuffer *eb)
 {
+	struct drm_i915_gem_relocation_entry *relocs;
 	const unsigned int count = eb->buffer_count;
 	unsigned int i;
 	int err;
@@ -1635,7 +1636,6 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
 	for (i = 0; i < count; i++) {
 		const unsigned int nreloc = eb->exec[i].relocation_count;
 		struct drm_i915_gem_relocation_entry __user *urelocs;
-		struct drm_i915_gem_relocation_entry *relocs;
 		unsigned long size;
 		unsigned long copied;
 
@@ -1663,14 +1663,8 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
 
 			if (__copy_from_user((char *)relocs + copied,
 					     (char __user *)urelocs + copied,
-					     len)) {
-end_user:
-				user_access_end();
-end:
-				kvfree(relocs);
-				err = -EFAULT;
-				goto err;
-			}
+					     len))
+				goto end;
 
 			copied += len;
 		} while (copied < size);
@@ -1699,10 +1693,14 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
 
 	return 0;
 
+end_user:
+	user_access_end();
+end:
+	kvfree(relocs);
+	err = -EFAULT;
 err:
 	while (i--) {
-		struct drm_i915_gem_relocation_entry *relocs =
-			u64_to_ptr(typeof(*relocs), eb->exec[i].relocs_ptr);
+		relocs = u64_to_ptr(typeof(*relocs), eb->exec[i].relocs_ptr);
 		if (eb->exec[i].relocation_count)
 			kvfree(relocs);
 	}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724023946.yxsz5im22fz4zxrn%40treble.
