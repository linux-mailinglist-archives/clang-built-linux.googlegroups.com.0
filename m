Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3P44P4QKGQEXRPCKRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id D87C6245721
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 11:37:50 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id x10sf14869795ybj.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 02:37:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597570669; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBDGyWZUXCqRzSMXyK14SZhHcKSxIzhry8bBFS0iAGM6x77DQmnH1SPDMc0iLhyTrQ
         7sdXQA3g+3SZOyaUdnJ98KKKRs4ZwtPLxS4jhl99OsVPNA/UdR9QTIbIjb9NpD1kbfoK
         cJbwaF5Lmud29V2C1KBkFyGL/oKJXKNGELFugxub+FcsaWqwNiz1pjiv/UsT4l4CJhlv
         +FKvszBsliuLkMGZiuBA9UneYM0U8cRL4eQvN4y0uAoDH1k+YJsp78sjr03c/9FoN/7u
         T3PQFWJaFsGG2XNoUhpu73xyok5dVF5uh6AIVR3jqUAAf9OORzkezU2jTS31HH69fxHd
         w9/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=p1rA4pn1xfP+5Oao7EGx+5jvg8xvknWl6Vut+VDGYuw=;
        b=zXbKqNsp6ZWJaufgp3onIfvATcC63rNIhME13T22+QWzpk55VObsmzO7s30syCQRnv
         z6eeLoK0Y4Mt6OKP69OTeFx2bTyg2dra3lJckpyvovRrvgfLH1uod2dFz1mPJ/HRgtpE
         7grxV2ePVaCROJCYUeRtao09aZ2WNkEukyfb4AXVmZzfZVx7HnkBJXqBJebuIvRK114j
         Qb46Ma66FtT3teqRkvg3rYET8r6vzxer3SmLNLYx60oPn68YavcWsv0e43zXBnYXCD+n
         W7tzOn64mBIyGqI6FpIDlKoeL5Hzhe+GlPZO/a8sm6Xowq9V9nUnSsW//Z2um1kRcDQT
         9qFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AHZrxLVV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p1rA4pn1xfP+5Oao7EGx+5jvg8xvknWl6Vut+VDGYuw=;
        b=iEyc4tUUmM+RETNp86PwoN7SXeXmxS00Fw3zBjVuHz4Xf188FColh1SeO1Zw8lnVlG
         gv5DlPdGALwnVtNcvaQiIfkUKakE+g2C0QoUe1D6Kq7h0T2PeJQgOY8rIUC2/oPCz8uQ
         WcMO6fm4A6dSw3RlOGlD06oru9B7C8OpxTbDxsDqXEy5kI4ESS8o7XeAc17DwhcGzGcG
         efvJAQ3xfShi1Fc7KFEZH7/6UyfGx4KNaBum+yivWpaDKGqtgRaEfXr9RgvYV70/MR+W
         swGe5d4iXalrnF0e4REbyNJXeVXVTox2+1aadPgAHlJIjlTftYBrG6eX7S+YvkwD01yc
         AW/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p1rA4pn1xfP+5Oao7EGx+5jvg8xvknWl6Vut+VDGYuw=;
        b=aTTQYUYIFjOKCwUFuRyLP37Pz+EaKJ1nY6g71+Bb3XJeuK/CI8GGm03iPC9ZiWW8De
         346q006tdP2acrKLI61Nvm5H4HdRT7KaPc8m7/FaugBA0zadkU8TVqo5ScV2ZEquUdTF
         HL6ibWs/2nEdKZlglkmIzOvZW+DjtOsi/3/z9THV3KI1EV38UcyKlvpCETD+GASmPaEj
         2hTNoGGVumPGxjdgOA7VZYwlSC1Qe+zdyKqFzGwLNqr/DO/Kt1n64mZa0Y3bBLP/18x+
         uw8/ho0VbnAybtOgBKPRcRGzfDGBU5o8n4Tu+gNgiLDMnvivOGd1sTX1qaXdsBCrKP50
         8swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p1rA4pn1xfP+5Oao7EGx+5jvg8xvknWl6Vut+VDGYuw=;
        b=CjkJfN2qsARSF4gxS0v2dqSMANlvRhqTfCyx8ZVJ4fO+G53ibMNA6KAXtJBuHcTYnX
         QrzMCk1lf2pwGaS4BZDbe8IRmc6qnR4zWoHtDNfpMo6FJ45qn9TTgX4buXWKIwX7XlkT
         Jcm508d3dtrvQ0bNMEjlskiHkIz4zenMb72Y7qlPj+c/0ErOSrfbQFrvpfEmw7Px/dVB
         50bqlqWLNn913JS9vsNH/sjvyXOhKoZaXlgdkBb2R13heTO9uCnnEmb3Fi1nCsOePUID
         zJYDaat9kkfHy2i+9hkIAJe99CGlGY+ED/lQYESYX7vq/OQnqJ4jOSnRYJGDzeRZ7z/Z
         UJhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+91nyZ+6s5EgRzUAykxcVx7gcAnrGnO9inXFYoxJbBANmjMso
	8XKymRh00yCA0xF2H4zgXIc=
X-Google-Smtp-Source: ABdhPJxUyX14BSYYT8Oar0DU8Do3RQ2jNwoHl9DKuOdhAivyXprU2s+onLjTqsCexBdWD1eZBYpxaw==
X-Received: by 2002:a25:3:: with SMTP id 3mr14811640yba.193.1597570669738;
        Sun, 16 Aug 2020 02:37:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d451:: with SMTP id m78ls5542370ybf.1.gmail; Sun, 16 Aug
 2020 02:37:49 -0700 (PDT)
X-Received: by 2002:a25:8491:: with SMTP id v17mr14450438ybk.227.1597570669391;
        Sun, 16 Aug 2020 02:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597570669; cv=none;
        d=google.com; s=arc-20160816;
        b=yJkLl1tKvNJBnncBMB+x1SV2vgbFN0NxPBr88CkB6kYEFyJL1enVfET7WrPWeOht5s
         LNgQpQ76xONOsxtW+l7P0hQkywXFjd0Fu/7QPT10sW5DgOGLTUScwS3J9O1/HQhbUFc3
         lV73m+DGOlY8e05GmfAan7en0ZBYmymeGly5R0f9Fl/KjBuqn9EURVpOEZ2APWVMtVj0
         GbBCQnRLrum39PzBfi4iFnJmuBSYs6LnoY408Cyc6xsWtJmH70inCmIMB5+Eql5OWQQD
         PSlTrLpH9kpvzQIYgac6FqH0OQ2x66Nvm5DD8EW9Aaz1dO9bWip9Czly9wQ+uqMZgSZK
         Bj8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vdeFolz54S0qQkKk6HM9/kh8B5+wcpI8HQoAZlCYNWk=;
        b=ffOJ0iZsHjtFJcgxJnwAxlc29KMb5dxhFuHjDotnGGpAZlJLqb7Ych5WYEgfuFnRiN
         Q1dlPhkES8vPVL8kD1sz46S76CSmVtDiNcRkBn4in//mx+KWE/km862QdYfPccZMnt82
         nFMaVboqZVdoZUEkRPkIOZ0/hp282+Iz1ccMuEPFWMOa8tXfg7059of+wYCGiHgx3d+E
         Dmfa2mGX/TR7QKMsg9FW3E7ATxfQBk/KoLIj7GkrQSLAVo3Ua8xajSJDzx8U8lKjB58n
         o5dT6IfMeIJxyYi5MmXNoAsYlxikPvjBO8SpLE/73uJHPFS1woI1HZZM6dlg7S8HmgOb
         zt6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AHZrxLVV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m193si1045743ybf.1.2020.08.16.02.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Aug 2020 02:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id n128so8394537oif.0
        for <clang-built-linux@googlegroups.com>; Sun, 16 Aug 2020 02:37:49 -0700 (PDT)
X-Received: by 2002:aca:724f:: with SMTP id p76mr6348374oic.35.1597570669063;
 Sun, 16 Aug 2020 02:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
 <CA+icZUUjtu3fCNTngY52h3uRL+eUaimNJb0UNwj5v-QwKggs5A@mail.gmail.com>
 <CA+icZUWH5f4B_6eYy2_OOi45VjUkE_kN9akqvcOxxmmmM3TSrg@mail.gmail.com>
 <CAKwvOdnj6ObdpsdVYkDxWp-dVTTg=xMkBm84y419SNtLuAqfMg@mail.gmail.com>
 <CAKwvOdnahyqQQMdWhzpaYkJNi21Ux=8qyBmRnPidiT_RAn0YFw@mail.gmail.com>
 <CA+icZUVKBsp4cJV5V=ZtywEi=Ary5w-fNSijkNknU+U9xiKRRg@mail.gmail.com>
 <CA+icZUV5m+kPWpk0ovoWD+DK0Tn8=c0MdWnr2XTxStwXf_VF0g@mail.gmail.com>
 <CA+icZUW6vb2JgKCnWMx-yRU24benZNLizwk30HLPGwYrNDR-3A@mail.gmail.com> <CA+icZUWpExhm951r9C2XCrMXiZ4KXMioc_YzhxWW3i+tHNDqLw@mail.gmail.com>
In-Reply-To: <CA+icZUWpExhm951r9C2XCrMXiZ4KXMioc_YzhxWW3i+tHNDqLw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 16 Aug 2020 11:37:37 +0200
Message-ID: <CA+icZUUV-vXQFkhDrLTCtnCpuKR5BpZ_SG+9376aK2g+BcE-hA@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AHZrxLVV;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

GCC toolchain simply ignores if kaslr_64.o has __force_order means the
build ends up successfully whereas LLVM toolchain and IAS breaks and
the build stops and needs explicitly commit
df6d4f9db79c1a5d6f48b59db35ccd1e9ff9adfc ("x86/boot/compressed: Don't
declare __force_order in kaslr_64.c") reverted to fix this.
With the revert GCC toolchain is also fine.

Maybe it is good to revert that commit?

This is with [1]:

diff --git a/arch/x86/include/asm/special_insns.h
b/arch/x86/include/asm/special_insns.h
index 59a3e13204c3..e1c19c5ecd5e 100644
--- a/arch/x86/include/asm/special_insns.h
+++ b/arch/x86/include/asm/special_insns.h
@@ -17,7 +17,7 @@
  * all loads stores around it, which can hurt performance. Solution is to
  * use a variable and mimic reads and writes to it to enforce serialization
  */
-extern unsigned long __force_order;
+extern unsigned long __force_order __weak;

 void native_write_cr0(unsigned long val);

...and the patchset of "x86/boot: Remove run-time relocations from
compressed kernel" applied [3].

More details in [4].

- Sedat -

References:
[1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674182703
[2] https://git.kernel.org/linus/df6d4f9db79c1a5d6f48b59db35ccd1e9ff9adfc
[3] https://lore.kernel.org/patchwork/project/lkml/list/?series=456251
[4] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674502114

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUV-vXQFkhDrLTCtnCpuKR5BpZ_SG%2B9376aK2g%2BBcE-hA%40mail.gmail.com.
