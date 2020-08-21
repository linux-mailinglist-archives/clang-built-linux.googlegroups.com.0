Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGOIQD5AKGQE5VAJEAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 1087D24E0D0
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:27 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 36sf1543966pgz.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039065; cv=pass;
        d=google.com; s=arc-20160816;
        b=lsNHjERAYWeYCVNJxMu6wmKxrzVTPvcqooB3y6/kIPueeUOlIUxdvnk3kuyg65joDU
         +IqgWi7Xm05lXVTqwgGvnsfoCj7mGybF8EUtz23jQHcl1bjgiVpzh4V/kGStBSlcdyu2
         ihNyPah2PI7e0J4xhIUFyXcaWThkXo0I9+3sLn3BmygRwbASIj97cxiN6zjp9v337IKI
         Fvj3p+U8332aGHjrkTtEWTWZE4lq0xNKTOzIObWONHSlsDtZX8SBn7MvzBSUkbdVv4rJ
         GGcixvN6Bxs9d37qwPgfo1pWRxT/ErUcsXeh8hmj6ITpEfHrlCgoIRpsNEy2yz8o6B6f
         /QQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=A5vYDavSSpc3WpPaxtoqI40HuUnMNwDB4ZDSSTsbuwg=;
        b=t5l48B5uANqbDN3X9R+qcnqKRwtGhfvjKARIsfgKP/g2FSx6FUYYMaAx/PJIXTVU2/
         3bcka76h+mRoSdMsZY6//m/5nNDo2k5ILrZV7btlidMxubC4MPl8nEO7v6FRBu7/SJAa
         Kfn5yusIDrw5ckHraXxWy/5xEaPoH4AKRr6hVioYEVskDZNWWGblPLIHfFyKm++oQzw9
         j05QySvdeffUo0Y8A2e6eo6KqKXrcQHFp7GwukmxjMupa/9aWeY6VFmqQIEr3xslKkzd
         ym/FLFGhTOW83Zf6NKOvrALp3k4vXFLz01h5xQFDDXk9bFhZTX/sLK5K3Z+9qa9U+dSo
         Vspw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S9JWqqSo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A5vYDavSSpc3WpPaxtoqI40HuUnMNwDB4ZDSSTsbuwg=;
        b=X1Ck7U12eexZhgQW4gVRlU5OQkjbchzeFSfiAFbWbVkkikn1xhqmxVApWa4KrLh79M
         cTaCwLcUdk0uHXNZ/9Ja/r17BX6DX2yUcj0OyZzcOU2XTl0I1H0WITa47MHKaXGblW3l
         oDCuzrY8eswYqG0iGEOu4YFlmeIxLrkbfFYm+QRqGhDsf+11fFcigMjCh8i4SqLEbUFb
         81nIkVIvqZGA/HQ9++Nf8cS+574TrIFv9cBeIrp5fsmpZME5IbqKMl5lHvAHSCPPOrDr
         YOJdriG1qIsXImQE8J0Set2FwqbGSqWyOacs7SZJP64FcCqh+O6Rr0YkKt4jH16yCork
         oDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A5vYDavSSpc3WpPaxtoqI40HuUnMNwDB4ZDSSTsbuwg=;
        b=EA/eHzQdKCZSk4vP0EB5bF4fQ17p+0l+B49XHXpugQ3Kj/IbyrZi+Wjx3RbPgfULiR
         ksBL8hM6wTCjZsE3aEY68FREbmp3dz2PyR/vBv0uLXIbVI1bRpjKBp1s0TcbJgtNm32b
         ZlpZXihFxqUTJcEfdylfX51pXk9c6ii4L5k2CJquySEXXuGm2/V+wdmpb6HEMxlpDW6K
         JgP2FBveyB6zjyKDPuzq7xSPg/hqOye2UJH5fE04C+WSoq1FKvcAYAzGEwdlFSzT9Zmn
         Vn9S74xmCE1j2SMQD7Ewx7pgNyIZ5m00p1UHUDtMzhv+sHmtvGFFmanesCLCLWrCSsE+
         Ve5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ypqroUjRiLGp39U603JycANIokREmgnMi00E29zKvV4Vc6T5c
	yELUK5j6r0v72fx9JiCJEEI=
X-Google-Smtp-Source: ABdhPJy07a9PDidh+lROnL5JtRShVlV4GJ2bsCcrn+9dFj6iokxtFzOhGNU8+3yjaP6AbVCt+IzpzA==
X-Received: by 2002:a17:90a:c291:: with SMTP id f17mr3798369pjt.92.1598039065747;
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee0c:: with SMTP id z12ls1497430plb.6.gmail; Fri, 21
 Aug 2020 12:44:25 -0700 (PDT)
X-Received: by 2002:a17:90a:f28b:: with SMTP id fs11mr3880707pjb.34.1598039065358;
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039065; cv=none;
        d=google.com; s=arc-20160816;
        b=XUbQRaoiCgomu3uTZTAN1v+oefyViACkg4o66XmbZzw1H0YQ4b0Wp51apz/vAwthFH
         W4UwfzO4VsitbxuqFAlY4wZHzth8EwiH5e9b+g84ny0CJvalSsjIT6aurFYnbJB1VLEV
         uKRhsSqnSFs1RpjqIgbA9tL06w3Oh/oh9qfnwT94uEWBmUL/8pDLhEIb3nT3K+dLpliU
         iOJEA9FaKqxuDrp7vx+IFxtHdMZjuGHZKzWPuFmiOx8apZcvrzgTeciZ0FAvghh7+HQO
         O7IZjfvXKsHPxHTrHL/0A4Xp/zWHlbpvSHCoJ9GjeyvqDjXHejKhAKrmoDD1wuGAq7j9
         CcnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LhHa8hwizWicyR7AmABsSaI963QK2ejKgNvGzEzQJyI=;
        b=T6ra5Bz74ofDTjxfE7OFhvI7g+Oaqv2M6W+9z2JgmI6e7g2a2rXCYHP6okDQhVqdic
         65VNMYuGUcRy2fPuFeDgAFIN28fq+YEOXBfNvJfueb9lk5IxA1OUK0B4qxghtjd54Lbi
         CX5yPPcJFF+aMBX7V29dsaD1upqTBzZZIhzraZYFt01RLhD1VUA3bseJ3u3H1fl1ivm3
         rtL5gnBPEZw5xppEiq+c3y7TrPgoI1P9wiBCxrweIrkEdRPhp9o3gyaXshU/pXEmfi4a
         4+wUxMesjU0hBIBSRjF1X6cxS7IG3Du9J8HCPKdEmYolkUr6Fhhsoqdw1dH1yHNVyBCs
         xHWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S9JWqqSo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x18si161004pgx.2.2020.08.21.12.44.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id j13so1248106pjd.4
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
X-Received: by 2002:a17:902:b70e:: with SMTP id d14mr3365610pls.253.1598039065065;
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a193sm3460814pfa.105.2020.08.21.12.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
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
Subject: [PATCH v6 06/29] vmlinux.lds.h: add PGO and AutoFDO input sections
Date: Fri, 21 Aug 2020 12:42:47 -0700
Message-Id: <20200821194310.3089815-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=S9JWqqSo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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
index 98d013dcc11a..91dcfb91ac45 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -581,7 +581,10 @@
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
clang-built-linux/20200821194310.3089815-7-keescook%40chromium.org.
