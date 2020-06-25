Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEPD2P3QKGQE4ZOAOVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7DF20A532
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 20:48:51 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 75sf1073834pga.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 11:48:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593110930; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1OLEh89DkWZlrAtcE0VQuJP8nwpfp7jWAxetnGHoQIkMcmk4sdmdh7IVh8QfqpRzr
         KNNCpvEuI8wT1MuzdGRwYotdug9JrBbqjFLL/3Jjeo2mytqb6NsKLab/0GQe95b0wGLI
         FhdpJwOHneMkZs9SlBOB3vu+iA95RnfFe6bxMFZyhOueOQugBnVUh2exlO/NN3Yav6NV
         EnAMTcnax6cYkQ1+6jpw0u1dvtplIioOGGg8D3yx/RZvZZlTDvjOD2G/Kxb2IqS6GwK+
         s+IpV3DuQHwY0q06rlK8yiDmSPEqSJCHTnKrfYEYvq99mydohH10AXvOCP6dyZJIZlOd
         PfAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xccf5hpFPFl3dW5lmyR/BoBvgMG20U4XOxVpwyf9nbs=;
        b=Z1KKS/Wc1c/3kmvqdboQQGGkFnOWgNZ7YNQtoTNSqtymnYgQ0uj70ohAD5HdezDejq
         wDjFKTrSGGZcgwMqE9JuAmmiPG6lm7bB5invc0guyidEwIIcOJ4inxHUGxCuiZ0RNr6Y
         0wS/n/1gtry+rTVGydo7R6BgTXtzjjGwZ/b4SZNKBXephKYOAuKcIWaWnk9EG/FgkBdY
         DRLZ2lqVM/2eqii3oQMGTVucHFNXcm+7xdepBKu0VFrrfO4lqxVF6/gO+ibG2MMHZoPg
         HNLOh71C85xyDtIJ7OLpHj6d8GS/9ycySjER2cronRYGRlBnsW67yOgS8VnQmv+Tw0yx
         T9Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=knKRqtKF;
       spf=pass (google.com: domain of 3kph0xgwkaeuuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kPH0XgwKAEUuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xccf5hpFPFl3dW5lmyR/BoBvgMG20U4XOxVpwyf9nbs=;
        b=tiYDpbdqZ1LoWzwoSh3AdHS4CLcNkKMUIP6jSB6AMbS2V7dBeaq6/1DKy7KXRDhIbt
         E2XJsnC5Us7YJpfwnZc2NKwC6xviQ1otyvjZQLcsidBC/WBH7pVGE8njOuh6W3ss2mrY
         bZFwfV9dtA6ZateSTfbovdiXC6f/7FDmaiaEhdNNK5sCqYTyDFjMMAjmzvrVYUIQ+/rS
         wNINQrmO+mcg0jh/4KSqAByTEkXYchp++F3lx+Jg7GAGngwECtInEiPF7sSKJA3LC9Lr
         +1+4N/kbYNBxod2hp2zoKYUzxd467XrLwA9iNUHHIXumRitGnTQf6UcIIyng6QPoKiRT
         8Bow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xccf5hpFPFl3dW5lmyR/BoBvgMG20U4XOxVpwyf9nbs=;
        b=S/RuqgVrVY5Ivfrwb4gIXtu2fWwJSulWtShiDwSJDDvwQzRf+isSPKT9dS9RwObqgl
         t5f4qNSjFHmqVwnmL3MExMjmY5tL/igVTagYC1CPR+nlgNnrHrUdFWxmRAUKcvMpxX5g
         4ZcEw4Vt/bwsPCaXTwHCmK3T+8TiIMXnp7hdGWTK/0fdgmjEVQVyAx1sPukQtlQSnKqz
         I/+f7OEwlPcolLC9uN43sc3vgmDIci8TiUrawNQDOHsNbVlWCgvrND3kVGU8684S7569
         2zPG/Ngjt8KceD4SGe3JtmruUlcXi9LW/kd/b6zD8qZSlrAhw6RcIez92nI69agrzsw6
         JBLw==
X-Gm-Message-State: AOAM531kyahq96TkKLBCtFMCWO/rf+RSeqPkRMui4SH+YMgMZ16/FUxw
	u8GPGRwy2+oqYMKsZOycFuk=
X-Google-Smtp-Source: ABdhPJyOq619RYNDSGOdSpygsdt2DpnfgYL6Hq1SfZ31zg6oH3njySn2qj+b1+M0bvLBd4MmvfOwUA==
X-Received: by 2002:a17:90b:915:: with SMTP id bo21mr4848555pjb.52.1593110929846;
        Thu, 25 Jun 2020 11:48:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6299:: with SMTP id f25ls1812287pgv.11.gmail; Thu, 25
 Jun 2020 11:48:49 -0700 (PDT)
X-Received: by 2002:a63:3c41:: with SMTP id i1mr28217811pgn.349.1593110929400;
        Thu, 25 Jun 2020 11:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593110929; cv=none;
        d=google.com; s=arc-20160816;
        b=VCUzooPC9OnKfZf88eddLm02yVBfVvfLV03mVNAwSKlCc1HDl4JAdUGDl5T+RqRQwS
         GRb0rEvywqqHnsoJEA0rrTqI+Dd8WRkKw7aMdVPWeeSDz7Q0L2B1P4TPLEYGSMP8PVdI
         REOclH3e/g4bEizr0s3D9pBZrD6NaDnse0lQbWnfZFGjtE1qiRmIZJnegWBpNYuz1hkS
         ZTT58K99NbVjaeBlpuGt6JMgbk9jtUPCD4iyxvHbyqBR+7/FroJ6bqgljxy6VJ6NXlqZ
         rlAKEqr4O68aVMIE5r7+qolBy86pdxGJnnXLJujikwMO8IRyMZWkPTi4V30shwBjabEB
         hh7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KSzIS4R7pLrhz4aCSES8O8YLNhHnwl2dEbCnP+qYXsc=;
        b=MEn2i2pL3Ok0zxCEJiGCyGAnp7111bvPhXXSEAdubDlPN8POs/VBR4K4dVTW4NL+i9
         tDm6LBbS7Fbg5d1THCDtyFayhxPOxUzz9ZQh9MLLlXGRx5JRqVKBXZtDmIflGium0OFW
         Ffh7uLlBJVkFNGphSB8ruEVgxnoTjWXuEn/24AM406dhnbEWFXyhL/F6eoE7+crciZK3
         w3sn9BfoCcnYVXWDJtMBaCttI75HqR/eBY0rt8Kji+rdCjrG3kHh9HJbBK6vpFsW5gKj
         /8GPLZQuRADyWo5FzJetF1aIv/rny28TWlBlqLwk2fRrzkVKHVoWyMn2kYgs2rLfQduK
         HWuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=knKRqtKF;
       spf=pass (google.com: domain of 3kph0xgwkaeuuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kPH0XgwKAEUuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id w13si485937pll.2.2020.06.25.11.48.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 11:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kph0xgwkaeuuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id l123so1747332qkd.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 11:48:49 -0700 (PDT)
X-Received: by 2002:ad4:44a6:: with SMTP id n6mr2687847qvt.113.1593110928539;
 Thu, 25 Jun 2020 11:48:48 -0700 (PDT)
Date: Thu, 25 Jun 2020 11:47:52 -0700
In-Reply-To: <20200622231536.7jcshis5mdn3vr54@google.com>
Message-Id: <20200625184752.73095-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200622231536.7jcshis5mdn3vr54@google.com>
X-Mailer: git-send-email 2.27.0.111.gc72c7da667-goog
Subject: [PATCH v2] vmlinux.lds: add PGO and AutoFDO input sections
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "=?UTF-8?q?F=C4=81ng-ru=C3=AC=20S=C3=B2ng?=" <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>, 
	Manoj Gupta <manojgupta@google.com>, linux-arch@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=knKRqtKF;       spf=pass
 (google.com: domain of 3kph0xgwkaeuuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kPH0XgwKAEUuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
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

Cc: stable@vger.kernel.org
Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3Da=
dd44f8d5c5c05e08b11e033127a744d61c26aee
Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3D1=
de778ed23ce7492c523d5850c6c6dbb34152655
Link: https://reviews.llvm.org/D79600
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760
Reported-by: Jian Cai <jiancai@google.com>
Debugged-by: Luis Lozano <llozano@google.com>
Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
Tested-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Add .text.unknown.*.  It's not strictly necessary for us yet, but I
  really worry that it could become a problem for us. Either way, I'm
  happy to drop for a V3, but I'm suggesting we not.
* Beef up commit message.
* Drop references to LLD; the LLVM change had nothing to do with LLD.
  I've realized I have a Pavlovian-response to changes from F=C4=81ng-ru=C3=
=AC
  that I associate with LLD.  I'm seeking professional help for my
  ailment. Forgive me.
* Add link to now public CrOS bug.

 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinu=
x.lds.h
index d7c7c7f36c4a..245c1af4c057 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -560,7 +560,10 @@
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
2.27.0.111.gc72c7da667-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200625184752.73095-1-ndesaulniers%40google.com.
