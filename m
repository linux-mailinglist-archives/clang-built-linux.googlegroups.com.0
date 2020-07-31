Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7OISL4QKGQE4OO7O2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FD8234DF6
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:46 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id g3sf6155377otq.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236925; cv=pass;
        d=google.com; s=arc-20160816;
        b=XvRh/Ovg/FLxKwAT/+hOR61sRi9oR7zQ8lw2x31LFXo4lwytDod905Sku5FO0pRiAP
         iZx17cEqDYx3RQbUl3dPasjk+w3eTy3A+zSKJlDtOwqbH82yHXSAj8/K0HBe5WFwayeT
         AuouRt4j7hE0tVR8hE92QSc89MNxK8YGfdSvV4Tz+yGI6NakonvWonFbZIwAD9GqhbOu
         rSxOAXF+Bmkv2N3gbnJcTYYc21UCxappp8nmOJGUCp17oAkDQNML8Uu7Po9XBVqOx2QB
         RwhnCoduNxsaHQ/XyXQiGkGOQpcZkuSofyH8Y9tDA240cePybi/ReYImlXitHdnFKURZ
         GL2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=e6+3sb4NAKfh6sa9f2UFoYV+wmATpOPVOGrnvea133k=;
        b=OSsBxfq5ez7RiUTUV9gu9xc+0V2nARuGYL0MrTs8VZRngSZ6jOI9acWoqyKT+CgPOI
         ixVCkrK7coBlFNzn6ifrFfbnK6BmoUFjTHP2nVkDP6lkSZLPeP1H+2s78blixYtTGSnP
         b5Iqr0yHfX3ncm+IG6xZnYLgcqP395ZQObAwbRo5KBlYPfZyFj2JwMHtpEk7VcNvViWy
         lakrSs0KLkWgTY7B0CyY/3jb9YSwduNDgZTLoHp0zhhMaFhGQkDZoNn8iHUhr10V2umO
         0364QRC4QfeisgFHRRcnKZWykB3bIHCYWVWQ8eerwu3c5FmEikqQvWgKF78l2tdFgQX8
         Ge5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IPdfxoRv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e6+3sb4NAKfh6sa9f2UFoYV+wmATpOPVOGrnvea133k=;
        b=fj5kPw+jZnN9jbIfUwoNAJXbFxmbTpQSC+HOQUIXr7DLYEAThlRqwnOo7435doVhqY
         RmCacgunyYNXfV9FCUDfvcS93xD0+BZJcOnANycOPCIQyN8pkAbHY29X193OhCX7krwo
         Yl9jdkyuWnGLW15JokLjI+gn+cjlXre2OOOW/GJN8DVVAHrjeNtdm3N+whRG/uNEfgTd
         PtwMoGL/xDmgtagQFKVD2EghmeLYAuf45gzywhGy27fa6f+axU8YtMaZ6BPSXUr/pITy
         5vyuNI70+VKUnN74FdAFfT4sR/l+qQk5rC+0mLMaeqVBunkABt0r5XgND0+NFGgbgQ6N
         2+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e6+3sb4NAKfh6sa9f2UFoYV+wmATpOPVOGrnvea133k=;
        b=OOT1HyIxd3RgBiNOgy+DcF2BBXPsKadFRp/9u/6jm73wLZBSL8P6eAffh0ZnsgVNwq
         +oKnME3DDWvzygr+n7FQ5H6fHHPs3p8vb7GO84FYkrBqvid4GfDwmz9WW3fZ61AmFHId
         IXVD0/ZjUSHmK+LgvSs1qo+6MHmZIrDg9sV81C6H6TvD4cPwBUbQcz6yqLfFIHHm39HR
         ykC462iaQDfdkNNM8pso3yOjmJOZ9X/Y+MOyRUtYodsFFrXjxRi+hvv5Wi0ncdGZOcDj
         BzAaBMhetf93vx7kMGnx8dJGpnOilYvhFxJa5JIkWPQWszfzjPVzyl53bIrhY4HjUq/U
         XMVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Dqbkcu8baZsh2WvgF9AuVPgUA7JV8BxSJZF9pxMlKmNIk27aI
	mk/xqV/lJ+h52j7uPUXqwCc=
X-Google-Smtp-Source: ABdhPJzxDboB0VWxzZSEGXh3MTZ+P92M2VQ4TGOh4CaDOHYkQ5E+7GDnnsbpajLMQuhN0DWHL52FDg==
X-Received: by 2002:a4a:ea29:: with SMTP id y9mr5055157ood.72.1596236925579;
        Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d09:: with SMTP id 9ls2096576oin.6.gmail; Fri, 31 Jul
 2020 16:08:45 -0700 (PDT)
X-Received: by 2002:aca:3708:: with SMTP id e8mr4910126oia.25.1596236925279;
        Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236925; cv=none;
        d=google.com; s=arc-20160816;
        b=0VwmzZhvwCekrngCqEqwpOUxexfOeFfRZifmpU0tnDCM5z1P9vaRM5ZW46HnxVs61M
         tBrJl1RZNn/YeLvmo+3cYp9FEcopdDUFg+BnLZ0eScnKFUcvRIrzPgDVg0+hhTPpaLSp
         vSfYlVwElP/SZvKqiL5qk+EGU/eF/CxDa4ebSMxo9EezylMJYoZwHt+XllejiI+75ACf
         4p7CoSPWmv4+aloCCLdp/leu8dc4kKDLVqoO94vs345NtPMhBWfxe5ZH8ywPZ0NaXkAZ
         0W+jZIEmFQUgRgtizCTsbxfF/aNJAxfaphcnnwc0Zdb/aw6vhGBe8Qsm3ioYOM7HU4H/
         zK0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wsZ5gbKBfJpS0kEAhEgSsyY+vol7k0zdc2IVxjvZo+s=;
        b=nGmqbkBv0tJfEEpk6agTimRC5eBW+0MHq6m82Yb2WcaLayEqW9JZQ7wV8dorbBu91V
         p0Z8nM/zy5Nh6KwPS8QtP1FIpJvvqMDU73Er0D3OnTF9IVB4hV5xDuEHwOyOCfXtpYUl
         LG9E4n5af58kdEW+9Ip4JaQ6B93Y42PDixY+6fJ9NGZ7nKIGWaEcyJZTh8+8oAl1eLDt
         f0Oam6C8aCi7aTIbK6G+uJVizmt6mBhXyIfnnjlmo3huRa3Fw4fBDv1UezsuGhYbe1aD
         vTu+07z+ZJFYKS+r1bzI/OsDCplK+KCjJpVLMqVq9s4IWOmlCUhUqmffUXOJX/S394KN
         BQIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IPdfxoRv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l16si614218oie.1.2020.07.31.16.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id t6so16797627pgq.1
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
X-Received: by 2002:a63:9246:: with SMTP id s6mr5522207pgn.22.1596236924597;
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x9sm10524734pgr.57.2020.07.31.16.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:39 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?UTF-8?q?F=C4=81ng-ru=C3=AC=20S=C3=B2ng?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input sections
Date: Fri, 31 Jul 2020 16:07:57 -0700
Message-Id: <20200731230820.1742553-14-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IPdfxoRv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

From: Nick Desaulniers <ndesaulniers@google.com>

Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.

When compiling with profiling information (collected via PGO
instrumentations or AutoFDO sampling), Clang will separate code into
.text.hot, .text.unlikely, or .text.unknown sections based on profiling
information. After D79600 (clang-11), these sections will have a
trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..

When using -ffunction-sections together with profiling infomation,
either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
sections following the convention:
.text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
where <foo>, <bar>, and <baz> are functions.  (This produces one section
per function; we generally try to merge these all back via linker script
so that we don't have 50k sections).

For the above cases, we need to teach our linker scripts that such
sections might exist and that we'd explicitly like them grouped
together, otherwise we can wind up with code outside of the
_stext/_etext boundaries that might not be mapped properly for some
architectures, resulting in boot failures.

If the linker script is not told about possible input sections, then
where the section is placed as output is a heuristic-laiden mess that's
non-portable between linkers (ie. BFD and LLD), and has resulted in many
hard to debug bugs.  Kees Cook is working on cleaning this up by adding
--orphan-handling=3Dwarn linker flag used in ARCH=3Dpowerpc to additional
architectures. In the case of linker scripts, borrowing from the Zen of
Python: explicit is better than implicit.

Also, ld.bfd's internal linker script considers .text.hot AND
.text.hot.* to be part of .text, as well as .text.unlikely and
.text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
see Clang producing such code in our kernel builds, but I see code in
LLVM that can produce such section names if profiling information is
missing. That may point to a larger issue with generating or collecting
profiles, but I would much rather be safe and explicit than have to
debug yet another issue related to orphan section placement.

Reported-by: Jian Cai <jiancai@google.com>
Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
Tested-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
Cc: stable@vger.kernel.org
Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3Da=
dd44f8d5c5c05e08b11e033127a744d61c26aee
Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3D1=
de778ed23ce7492c523d5850c6c6dbb34152655
Link: https://reviews.llvm.org/D79600
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760
Debugged-by: Luis Lozano <llozano@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinu=
x.lds.h
index 2593957f6e8b..af5211ca857c 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -561,7 +561,10 @@
  */
 #define TEXT_TEXT							\
 		ALIGN_FUNCTION();					\
-		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
+		*(.text.hot .text.hot.*)				\
+		*(TEXT_MAIN .text.fixup)				\
+		*(.text.unlikely .text.unlikely.*)			\
+		*(.text.unknown .text.unknown.*)			\
 		NOINSTR_TEXT						\
 		*(.text..refcount)					\
 		*(.ref.text)						\
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200731230820.1742553-14-keescook%40chromium.org.
