Return-Path: <clang-built-linux+bncBC25XUMBOQIOHUPG6UCRUBESJMB22@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA9C1CE489
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 21:35:00 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id be7sf8207823plb.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 12:35:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589225699; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZ61m4ZV1f/f7Zd1gG3twpTHeWxqIQzKtKCPArl9wBhVT0j9df4LbMycvGelgzIvsH
         e3mO9XdfxBEVnAqEOaS0gwxJPJ4RFF3MFYrFVmTFlSK6NYihgf+hqsw2GOTreVZ4Kebg
         +UMYHafXynIxYFQi8E3+mJYzFTHnRDaf9KR16NqrI1a8o/wur4Q6Washk3kvPqEreLDR
         n7tWG/Vrg5ygQfwPHM+AqtplfkHDytRMyT7wjAjm0LHVxmIArZX16FWkBhUbOkE5AoH8
         tT2opMPj3Dgfof1+4jr0+bV2oKkArrIT8Yyzxd/rY2sOdVSXCUAUPX48fbpv4lXAG2fC
         f2xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=c1j1NHeJFoUVLk9QNyWoOKXPAQ1uDf0F7D8j1NhCoC0=;
        b=yWaEQjRfpHOdZX94A0WPge4j3Hww6FPKHRsLdBfFFZX515yk5WSpBZdVZN6+2qc8u3
         CUJGbJbUHmW9IcckQ/8n2/0rKIYBXC/PcE1Mw9og8CL6LCSLPQ2O5pWud0STNU8CZGHW
         2ivPHMPfVSQqkuWwWZyxkAlQSo551tpIcHv6d3yA/Svx/q5mJ5kx9lN9Bnjtl1WN6QPR
         o573ur1JGqKWMtmI2jhLZFLJS/jiE0rDy9iKvJyTDLhszdpTcvBWLhOUHr0dLqeTkdgO
         70V0zIbu/q8mgHr3e/0HHo+OCfqffbr8iHwCftAKgop2L0qJ+SFEl92TbRobQPtGwyGk
         aG7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTiKrsJO;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c1j1NHeJFoUVLk9QNyWoOKXPAQ1uDf0F7D8j1NhCoC0=;
        b=YMLJpVilIxDAwRWM3N+urglJ3/3ALP6SWPOhNWT4vo5190pHVJatzyfEzygSqjr6My
         SQDeUYWA5mSMsWsLGDljyY6DAUX93Ii63d/1K+sjh4RohJLOn3InoFdD5foPIyAu5x9I
         7sjae74en9PT/AQVGABIhrq/ptb/HbqCF89WzDKoSX4Vo92CAI0XzpbmjQ9yKXTPDKkP
         TW12AUTkTgqdD3FcGPBaXBACLSltWyxO2ni8hdp+os1Ye0a+1nEnXi8rbDPYiIHCLeQi
         jzGH0o78JVLY82iLRQewcjDu/JWzJrmTrw0FFiuiFr/klRX6+EzR40bggGNw96x9vZ3u
         cfyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c1j1NHeJFoUVLk9QNyWoOKXPAQ1uDf0F7D8j1NhCoC0=;
        b=rsU+BVq+YjjkXYrCGrLl7skeIpw/BZRhCb3HnNh2O5mNwNO1/UC2SZ/P3COHEk9tX4
         rAH8hKbMb9J0HVabrf98yMqTbFn1ZNpAhQnmeFI8wFScpytDUmKQJZEjyfmUo1jO5UGR
         b31E/YK+lmZG2qPGYzAna0kmS5rzwJLBdH1e+/tnyl2rpCre67dvpWWc8obGb/3VVx2q
         sL0yaivBRcsMmacB3P5mXZ6ImCPdS94YCy1KzeZyHhFWwatqIFBExS+9e/RkLP4s0AwF
         /xtNaZ9Te4gn5b+gxzi8dAJrPnwbZixhRIL9P7UIlamTHI+qEvVj9tFYFlJyctW96aiB
         bDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c1j1NHeJFoUVLk9QNyWoOKXPAQ1uDf0F7D8j1NhCoC0=;
        b=aF7Cmh+qjKE4K/+rbpTDp2BsB/JcLZZY+V2mEIXysnEM1BpJay+k4qb1QjzWvLtxi6
         hkd7a/Om7QjpSmL/Km1WklXw9DP5X7UxP+xapt24rZO34r4dsy5WIVrEVjRollOGRCFv
         5f3BgMDmbMbteIgasehe0AJIwZyAIgtq9Gu5lhBg8Al36PYWMQQqHgVR3oMmFU7BJuBe
         0rmMFw3KZK1hm/7NxpAEnss9yhl0zczACD+NP9XQxNVmE/j7u5lsfiJ6wJkmttlamqVV
         K+RVuaZKHJWlmACABsp3TAstULayYuf3LEbn5w1LtjXeYdR5I6CwsFWZpigkxcbSVYxB
         98jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYQwB2QI0XjlwV6mSr215Avn2PK9j6zs2bZLLr2PiqzbrCgbORe
	GIlmUlZsU4yoha55VpVLskA=
X-Google-Smtp-Source: APiQypKzZ9NpoD14hyorx8cqZSP/+KoulVUwwTnShm+ZnSXpN+x4C9IgQPnEgqcuRfV4YDOf7rme0A==
X-Received: by 2002:a17:90a:ba18:: with SMTP id s24mr25937364pjr.192.1589225699451;
        Mon, 11 May 2020 12:34:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4001:: with SMTP id f1ls3852566pgp.3.gmail; Mon, 11 May
 2020 12:34:59 -0700 (PDT)
X-Received: by 2002:a63:b11:: with SMTP id 17mr16111713pgl.3.1589225699102;
        Mon, 11 May 2020 12:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589225699; cv=none;
        d=google.com; s=arc-20160816;
        b=WdSpZdG+eTlbHp+282elsUfri8LIBbtlJLhq94CDYSEEaVfbBKJFn9DPIzxlOT976w
         CENHU2ZqtIkwGQy9sM4u8N0hWL99piG3yoKeGAkpPtZIrJOETCqnp0a6cGDH/PJEiYlK
         t0KOmzCIs5x8DpSVXm2BttJadi4+/IuA+qF0hJZfvVw2uY+98m3NM34m0J/c6CGjRimV
         c2x28u0dgxX/2Bwue2/CgR5WqzPf0FsTuEUMhENnfqh0oLugnirpXIOuQ5CFbxcsx5ZJ
         9JDW607i8obWSx4Dcxo6fcyC84Ny+Z/R7Q8uFciHunejW99vWmn4XYdX7qlFT/lSjurM
         +J8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rxzW0ANI9kIQTWoAt3YTFrrJiXpICLFsuHzSz+FA2EI=;
        b=F/uSQyKoTmfPA52mOUZGS2ylO1gL09qCnPEDIbwBUxxvsfq8rR89qgB12bXFcUeEiT
         axJywEpATzwpCvJ4fhBfLMeBAZiaKhH042qNEpeAr2yAX+RWMB0FzRnjACypn8Om75+l
         /mESK9AlFOMvqQ9ZohnQDyjHgOSdhZtjRhiQzJU69PHdibG3QHeDMbKGPl5N4JCYMobQ
         C0zOmTOTgOHOdrqjGtM6/GIoGU725y7EJvlI+++VWnlKW3LMUgKdILYHBIxhSoxlk4MD
         4Xr/zqOsr5Afx/hOauOBd+qNIbT/5qy2ijYfTNSHPQBjkO2s9/8aIIR4qmRzuUeepM7Z
         msyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTiKrsJO;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id g11si763989pgj.2.2020.05.11.12.34.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 12:34:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id c18so9825483ile.5
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 12:34:59 -0700 (PDT)
X-Received: by 2002:a92:bf06:: with SMTP id z6mr16608400ilh.191.1589225698562;
 Mon, 11 May 2020 12:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
 <CAMzpN2iDottAY3p=GS0A_7XX7bpmWsmSOEcztMXNEEvcwHirjg@mail.gmail.com> <CAKwvOdnxV_KwC-q73e3basJvo4-9FCGeMUOrZLj5xyt6Yyeh2A@mail.gmail.com>
In-Reply-To: <CAKwvOdnxV_KwC-q73e3basJvo4-9FCGeMUOrZLj5xyt6Yyeh2A@mail.gmail.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Mon, 11 May 2020 15:34:47 -0400
Message-ID: <CAMzpN2gTEwGh0U+L3_R6pC8Qmv1iY7bRTiTEXD86mF3u9Nnkqg@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZTiKrsJO;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 11, 2020 at 2:46 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, May 11, 2020 at 11:09 AM Brian Gerst <brgerst@gmail.com> wrote:
> > This looks like the same issue that we just discussed for bitops.h.
> > Add the "b" operand size modifier to force it to use the 8-bit
> > register names (and probably also needs the "w" modifier in the 16-bit
> > case).
>
> While it does feel familiar, it is slightly different.
> https://godbolt.org/z/Rme4Zg
> That case was both compilers validating the inline asm, yet generating
> assembly that the assembler would choke on.  This case is validation
> in the front end failing.

> long long ret;
> switch (sizeof(ret)) {
> case 1:
>         asm ("movb $5, %0" : "=q" (ret));
>         break;
> case 8:;
> }

So if the issue here is that the output variable type is long long,
what code is using a 64-bit percpu variable on a 32-bit kernel?  Can
you give a specific file that fails to build with Clang?  If Clang is
choking on it it may be silently miscompiling on GCC.

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2gTEwGh0U%2BL3_R6pC8Qmv1iY7bRTiTEXD86mF3u9Nnkqg%40mail.gmail.com.
