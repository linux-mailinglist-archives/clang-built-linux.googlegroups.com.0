Return-Path: <clang-built-linux+bncBD4LX4523YGBBHPI7DZQKGQEG4CW7JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B03195C15
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:13:05 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id z12sf9518032ilh.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:13:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585329184; cv=pass;
        d=google.com; s=arc-20160816;
        b=t6RICT1LacpJMbybquJxQkwswVEmxWYk1AtiAUDvFsiIwMdkpqIhNHrqTHIvq534hK
         qC9+tQHTQ28h5aNXch4IxooqsB8/02DvrXqmOz3p9uaHH3oeicfmTP2K+A96Uqf6P3T9
         mNv890D2gHJ0Rm61JhesXyI/P7VNX2SpxlVJug3Pup3pdrWuoIUxI1z0EkUYrXFN8Ec0
         aZIVkEVeUNfe54wuBdXaIxhGNts4h6ugOJ6XVX1NeX56thHrx/KU+l16wRrK35x88VSR
         4t2o9Jwj9bqrjJb1B7tlteNMw/EGJ2JDWjkIKhI77bUTC5OamWLGcXWAfimiNE+65sP0
         e3Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=s5oo5nu4l53tHSh48Y0PSt9JyiuERHGsSiiQzXZXo/E=;
        b=DbN7CDsLjXcCblyjG54ndqYiE1AG6MzJcXtx5gue1qqIrCmA4ODszQChQgoLalETFL
         e+x4p+TxEefN8sjkYzm43GPQ5LcnvlpfWER3giTXvO8e4C4FSlFtUbX7b46PeijH0AWU
         c6/zrBdigePeZRaD/VvLju7nqwPDLcHVCCXcnEGeKhaOHyG25XnfaQiiZk8CMFdPfx6L
         z671lJ9vsgswHBWdZWybLA8WiyQz34akT3TK/FYtVVqspovZCdpxJxKYI2zzlZFLsPBD
         V+KuHzU5Qgz+A8gnU2UMqox3AYLYDhjsCaGMZAk0W0Y3D3jZo8Xxobdk1790rLsBAmAi
         LTdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s5oo5nu4l53tHSh48Y0PSt9JyiuERHGsSiiQzXZXo/E=;
        b=ExwKTuPufMFKsUWxMRMC46YbmMLICRtgXz5bBqfsJLiRlWwQXAmDknQqpkcFWJF4ng
         rdSLnE6O+y6n6DlG/2Med4d9ZmP6r5p/Cc+83QUfnn2bYr2DDfxcy5XDMBbuu35t1P2F
         6F1cgC26FbjYxbWrbThAtDpIsXdyanTZhGp/q4P0dvRL9j+iiK4nshQCvw7/8OnZWGeZ
         AVpLFTnbWTOSJ4Or2JORA+ksVI9A99Wp+6QiSIdsfdUwkpu4gPndwhrr31c7tpRZVpf9
         YwLt4kFePj8UAGqoOJowx3vMWHoC4Z5HafBIPKNodttJYgbuV24eZzRfjUnfaqTsQsEk
         7QUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s5oo5nu4l53tHSh48Y0PSt9JyiuERHGsSiiQzXZXo/E=;
        b=Vbb1SXQd6BGvrm0gISUd+zYF49HWjloo8NPi5ZAUOyf0jU8jpbPi3U2NE7MrJ4lpUg
         lMwu/t8oKLIeydZIu5tn1OV4LCEHCEshhGPyXop8AWv4eBV1+llTHncJgv6be0W+kuAj
         nHrXY+OP9Ek1STOkhtMsTL9HAZEx+LQ4bNTLUkJ4focXgHUeXcBs1XiKORo95F5Ivbwy
         ely1gjntdL6/5+45bmBpAn/FU6kNQWKHr+qIUYpQei5abGr5niePdyUXEG7+sdUPSIvR
         YH6RPmwy18IqQZ9EvhMmtI2tBT2v0Jkwi/SKO6SMtlQBjs4lMHJUI041OTfyomvKmNpa
         +y5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1d4clIr5hjo3sSUgoFrpLbJMVEtgABdLBo/DMlhuak3HK6u2Xb
	iAn1bNVHWREmzJWPRDUKvYY=
X-Google-Smtp-Source: ADFU+vu2iU/WDn1YJXmpVugtreSHPu/2K8K/hJNMxZFTM1ivPMvAi1FRsNv6kEfMR+4t8qunoECMLQ==
X-Received: by 2002:a92:3b86:: with SMTP id n6mr119090ilh.270.1585329183408;
        Fri, 27 Mar 2020 10:13:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:229:: with SMTP id f9ls1294798jaq.10.gmail; Fri, 27
 Mar 2020 10:12:59 -0700 (PDT)
X-Received: by 2002:a02:6596:: with SMTP id u144mr13945091jab.27.1585329179484;
        Fri, 27 Mar 2020 10:12:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585329179; cv=none;
        d=google.com; s=arc-20160816;
        b=nURaABap6ScDDeFzpM81UIPJ7Vz3CHpD73m+6mikQhBoSM0Cz9YXjoGj7X0rzf4E+2
         oqylxLSWRzElQ6NYtTwUrbecqKRjJtWqfxBN0OsiKuqsp6AIi6zvwxhgARwPDuWqzP7R
         DSLOZzMXib0FmfrPicDTmG8JW8PZow26bZG8US+wDZBjKcz4iR+rOtWWx42RFae5d/2K
         M2fRAxBh/Qq0HCia4tFPtM/xzW9XG/A5rmTF6J5rwD9ebU9TD+YNa27BEZTmn+dupe92
         58GHsyDrkkwLGPJFqOfypHIzCjAQg5R/FrjtmgcUK438zv55/3XWFXwAsqd617rpIoLN
         LIiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=egebuJRNCNUzWtk+iCJpnITT7GCC70ZmiSpCC3dJzb0=;
        b=ZDI/8a7K5JZXf3YCKus/lV4/n2cq+76MB2Ab6zJEw6h+c27aYAECXctGzMuxwnvpBH
         dHLtoANxCNOMpT+MBzgE73UsDlPdU43TVVEwshqJK/vq+4ej7w+I1QYkiL56/Z0q7rYk
         h/lc6oYRqQ/IA1bzMapiq6asbojHBCtcEw7or2tIk3HHaquTs0c59RpD8dJs3z2KmerT
         JPY9hsE4jOXy5mEJplnoXYbMfOGwP/pTXQaiAs//h0VicGO5CgHhA7zLLtfcYRw0nBaB
         tr6aVfUxagTL7N57oGRuiAWuMJSTGvrt4c/AunVTh2mEJGLMWffmv9x7WlyKY9tGpTpI
         uZmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id t125si536730iof.4.2020.03.27.10.12.59
        for <clang-built-linux@googlegroups.com>;
        Fri, 27 Mar 2020 10:12:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 02RHCc49019619;
	Fri, 27 Mar 2020 12:12:38 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 02RHCZQx019618;
	Fri, 27 Mar 2020 12:12:35 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 27 Mar 2020 12:12:35 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Joe Perches <joe@perches.com>,
        Bernd Petrovitsch <bernd@petrovitsch.priv.at>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
        x86@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Allison Randal <allison@lohutok.net>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH]     x86: Alias memset to __builtin_memset.
Message-ID: <20200327171235.GI22482@gate.crashing.org>
References: <20200323114207.222412-1-courbet@google.com> <20200326123841.134068-1-courbet@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200326123841.134068-1-courbet@google.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

On Thu, Mar 26, 2020 at 01:38:39PM +0100, Clement Courbet wrote:
> --- a/arch/powerpc/include/asm/setjmp.h
> +++ b/arch/powerpc/include/asm/setjmp.h
> @@ -12,7 +12,9 @@
> 
>  #define JMP_BUF_LEN    23
> -extern long setjmp(long *);
> -extern void longjmp(long *, long);
> +typedef long * jmp_buf;
> +
> +extern int setjmp(jmp_buf);
> +extern void longjmp(jmp_buf, int);
> 
> I'm happy to send a patch for this, and get rid of more -ffreestanding.
> Opinions ?

Pedantically, jmp_buf should be an array type.  But, this will probably
work fine, and it certainly is better than what we had before.

You could do
  typedef long jmp_buf[JMP_BUF_LEN];
perhaps?

Thanks,


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327171235.GI22482%40gate.crashing.org.
