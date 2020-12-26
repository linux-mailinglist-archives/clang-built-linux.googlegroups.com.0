Return-Path: <clang-built-linux+bncBCW5ZHGERMNBBO7OTP7QKGQEEMJGH3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4112E2DB4
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 09:41:33 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id d6sf3103856plr.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 00:41:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608972091; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYw3/2qDCgKjWzDq0PhscX03rkQq4u2phomwmNgFwv0Qte6c2br/JVH9uNd2gx++bg
         2Bj9GSitr7Cc7pCdp6XTn7h3pCxqE/sssxn2TbWhRmlYj64fXJ/GCOBGMpbhMNWGFPM0
         IHIITJzhARK/RyXAC4uxPFgItQ8heHz74RnA9Pislqfcbi0F5Uce/hVmLnABKa9QhhPU
         heHdnTyKUZLOA1BAUGR0TzwJNG1HrFs4TkfkXRcibt54CzHWcgd2Cn250CYf0B89+ZNA
         VDd12hH9hy96pabr8SJPIh6q4+yZSz18tjdMWL188RHgn7X6h8ioNOfguH2ZpTrQGiOB
         fOvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=oxgsHVbu8CxFoNIdCZvPw4EeALFA922tF3T8AaZ5xD8=;
        b=eJuHIYbXLCXwbTSGJGITX6e+QkvvuxubPwkTonQ/JdS/tsY4swOOVME2f3mHSiUpQB
         kVQO5W3gHM9MLBoPOA3TwNIl0MY8NzF7VxsaaBWR/b84gPBsYTZ6LRx78M+y/gGxBVe0
         drZvwPoA0QtI5/o3Fn6mw3Ik3aRFRvh2VshSf2lz55qZO7MShka1tRXAoUWScr9tOAar
         +A52Js4qqZ9CaHiuOU5i9ZoKNeRzYmEFA+7YE2gvt/PKNuIPGrR/iq5GENQze9iQ1E0P
         BJFTAOze1Grm4IhzXlVqHjkrhgGDamTld4OwSzTWgkONX8+oWInfOjgwbw8aKWd5A4VS
         yBIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=biHmQLNE;
       spf=pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=jmillikin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxgsHVbu8CxFoNIdCZvPw4EeALFA922tF3T8AaZ5xD8=;
        b=SFjXEYww6qKYhtuhZZTrZKJuTEisNDvbdFZSnQVNKlfptJqxjtIO2c85RG3orlXSSF
         G+PZRBbC1mTxtBVVuZMuzcBmsj7XPcjwiZj/POQUb+4jAl20whpdGw3k4/hRrftLbjnU
         fEMoN9fKx9opiaqMM0QG856nhM+JOXSMvRVK3XrLGV75G9GXZGlA2RKK2b991HGVLHeO
         mPVZdBEfvlDUCf9mh0pRjokYLq5tkAi6PpM4UNWVvv9oQLXfM3MXmt9ulWDHWUuUZ01p
         0vs8D6N3oasoSJCk8L0xGWX9IP9FgN6O59BL90vPJMjKEJOT0ZAFMKYbnH1H3YGl74rz
         csbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxgsHVbu8CxFoNIdCZvPw4EeALFA922tF3T8AaZ5xD8=;
        b=XBk2a+NTiNqBhqWG+Fj3APWU6XkNbsvyiRdF9BdP4XbvXt6K1bn91YuV12fqenuD2A
         mPm1SLrxyLH1Kcw3g98lnnvD5/ohWL6nSs9Zfl/TtRIY74Oh+hTqKGW4838veTtMw8be
         HsGKNdUTM52qiLIdlCUuNyIyUUfa1Xdpl6OhI0TrFGfAPRkzqYjgOQhe/yd0z5xdNEng
         hPUijNrdVhFZQBhsXMFJxgqDnjqUs4SpN1ubKbre8S5grIGvcBTJeAtYa9TaWKLwK3YQ
         Dv5w+CR6ghF+QtgEFLePl5zEH5g4I0QrG++//1gcLwOtRrUSdy7yBRGua4ZM7RO+kLgz
         81SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxgsHVbu8CxFoNIdCZvPw4EeALFA922tF3T8AaZ5xD8=;
        b=VEGvcP++rZW/TEvDgtchH8ufL4sRG5zKP/Bsh04OkCT3f1Wwug9AWeLXbwOhBPUXMb
         P7L3rp5VzXWjnOtmdzzI+OctVI8G7fj0EObT5P+gCzP5YLQ+Hdp8X2cjbvlv1ELB84BK
         zXFWXdrjI9wF4c8TlnHK4uabT0CS1KJbla5OCTZu13vJlQRCfu4uJCbcejeGstRWJtl7
         UuOYZJPeiAVjAtj2qRR0+BgO6WjqRSt+wIlEMwOqIDihyK6+eGr8xTQvBpzZAwE4ORrF
         EKHNrSbRtO2OQ68MGv9TE713GjsMDwI9txNI9gHi0N+FtMVfJMHrTeqBGDPii7xeJSra
         d/wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532y6aJgA0AWBkl122G6FFnuKQqj9DfK7vIRjwwfTbkW3jebu1rj
	W9hLd2hmLy1TGW9LTVyNQ8w=
X-Google-Smtp-Source: ABdhPJzi7coY3DJOlCzYYxeO/bm+08AzDn3ca2b+CcoeeWV0ixHpBIfCqPLzKTFr7nQfG/UZC/k0bA==
X-Received: by 2002:a17:902:6b0a:b029:dc:31af:8dc3 with SMTP id o10-20020a1709026b0ab02900dc31af8dc3mr14002615plk.41.1608972091712;
        Sat, 26 Dec 2020 00:41:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls20305626pfb.8.gmail; Sat, 26
 Dec 2020 00:41:31 -0800 (PST)
X-Received: by 2002:a65:55ca:: with SMTP id k10mr35357925pgs.431.1608972091156;
        Sat, 26 Dec 2020 00:41:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608972091; cv=none;
        d=google.com; s=arc-20160816;
        b=iG1PcTbiVqpuPPNJ5P3S8njycNJbzz9XVSkqCrqVmhhYdN0x/rKMRX46PuvmvDgfaU
         4RJmaVFdO/BL4s4iJRYdUYBOfeDs+mpADkVxKNREglECYsbIUVjxVYo+FGX3tE00Qzrx
         0gvEDtrN4hrjFmbDIgZMFAnwwv6PDeShRwxufd7xuM5AUPe71NHzfv5tikfp57k+vFMu
         XOWsJdVsTY6Dn/5Ik+p0b1RqDVKRJTcxJKE3cORWPnjSeqepC48SCpakKSxoxq+DNOY+
         kk2tNwFzBV7NiZHMIJWNdDgOL5BdRm/HFmZXcDkblG8Cu901zA6jOa0NwO/0TZQLrDEz
         gJPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=wbBgrh9YXj1oYs+3ziSMhnsZvXPX6Ut40pbshlURT4s=;
        b=t/568+C0B387tKjl5SLF8f8GYlCe5MuLWo3tZQ789PSMLFWakxDD3DDAL3ZVoZfaWQ
         WZn7PcQ5l4FQuAuMFBvNOv+tN2m64zDFRyfvmN9lbD8F0/UwaIgA1xDejoC0lp06Oy+m
         CCFl9G5dyEDvHSvrSd/jYhLfreLSf2t59I4VUr2vQE4cjXph05XbhrNoCXcqVi6eBbBx
         zjrNASXOVsHLe62TjP4ePcAmgWcg7wJBnM/Tdrbx5MURHkktQ4V958bMVMdyhjSrwQdy
         VmfjfNt04ZDMsbbrGf2tHY1BxANMD/e+jQpkFpacDI5GH6JXDzwO/BoBqq77pR8QPEVj
         pepA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=biHmQLNE;
       spf=pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=jmillikin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id ce15si498483pjb.3.2020.12.26.00.41.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Dec 2020 00:41:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id j13so3773403pjz.3
        for <clang-built-linux@googlegroups.com>; Sat, 26 Dec 2020 00:41:31 -0800 (PST)
X-Received: by 2002:a17:90a:dc18:: with SMTP id i24mr12057078pjv.118.1608972090883;
        Sat, 26 Dec 2020 00:41:30 -0800 (PST)
Received: from macbook.local (ae142046.dynamic.ppp.asahi-net.or.jp. [14.3.142.46])
        by smtp.gmail.com with ESMTPSA id z20sm7058263pjq.16.2020.12.26.00.41.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Dec 2020 00:41:30 -0800 (PST)
Subject: [PATCH v2] arch/x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
To: Nathan Chancellor <natechancellor@gmail.com>, hpa@zytor.com
Cc: x86@kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 John Millikin <john@john-millikin.com>
References: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
 <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
 <20201226075347.GA1977841@ubuntu-m3-large-x86>
From: John Millikin <jmillikin@gmail.com>
Message-ID: <3b793c42-8983-4502-1f9e-729cc0ebec47@gmail.com>
Date: Sat, 26 Dec 2020 17:41:25 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201226075347.GA1977841@ubuntu-m3-large-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: jmillikin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=biHmQLNE;       spf=pass
 (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=jmillikin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
contains additional flags needed to build C and assembly sources
for the target platform. Normally this variable is automatically
included in `$(KBUILD_CFLAGS)' by via the top-level Makefile.

The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
plain assignment and therefore drops the Clang flags. This causes
Clang to not recognize x86-specific assembler directives:

=C2=A0 arch/x86/realmode/rm/header.S:36:1: error: unknown directive
=C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real_m=
ode_header
=C2=A0 ^

Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
which is inherited by real-mode make rules, fixes cross-compilation
with Clang for x86 targets.

Relevant flags:

* `--target' sets the target architecture when cross-compiling. This
=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
=C2=A0 to support architecture-specific assembler directives.

* `-no-integrated-as' tells clang to assemble with GNU Assembler
=C2=A0 instead of its built-in LLVM assembler. This flag is set by default
=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
=C2=A0 parse certain GNU extensions.

Signed-off-by: John Millikin <john@john-millikin.com>
---
Changes in v2:
=C2=A0 - Reworded the commit message to highlight that this is for
=C2=A0=C2=A0=C2=A0 cross-compilation.
=C2=A0 - Removed the `ifdef CONFIG_CC_IS_CLANG' guard.

=C2=A0arch/x86/Makefile | 1 +
=C2=A01 file changed, 1 insertion(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 7116da3980be..412b849063ec 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -33,6 +33,7 @@ REALMODE_CFLAGS +=3D -ffreestanding
=C2=A0REALMODE_CFLAGS +=3D -fno-stack-protector
=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -=
Wno-address-of-packed-member)
=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $=
(cc_stack_align4))
+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
=C2=A0export REALMODE_CFLAGS
=C2=A0
=C2=A0# BITS is used as extension for files which are available in a 32 bit
--=20
2.29.2


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3b793c42-8983-4502-1f9e-729cc0ebec47%40gmail.com.
