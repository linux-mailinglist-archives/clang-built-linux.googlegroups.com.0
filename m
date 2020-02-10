Return-Path: <clang-built-linux+bncBCS7XUWOUULBBZOHQ3ZAKGQEF5V4MEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B391582D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 19:41:43 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id dw15sf171935pjb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 10:41:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581360102; cv=pass;
        d=google.com; s=arc-20160816;
        b=i/L6z0E/lzk9uSxilax1yNDKqQ4BeJ5yxP+q7ZsRHE4stwHxMIADPEoxizfB6z5bw8
         MM5GLTU5VXKXnL3vs/RnLdrXiCzWm2uXPTeJ3mWnwY5TIu61OsQcIRbU7yl1beetfDr4
         uvnrM13Q2wBU3gVEhVKDt5L0+RQI0efYqquKIkGVrkqqpYwyG5IiQp/a0+pmGXLETosZ
         ni3jaJTEocveoQs8BH3S0zYkCv5uKFH5VHuHgoDzSZxLpqc9XNrzeIPZQ9qsIdb13flm
         /tDE4HlRf/getAS37JUhGEssdusaZOGOUrYKs25pyJ3qByDDdQi5JOBVzmZ+OZwjFLoe
         0X1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qvnxZBLspD6TcpB0USRdmKQBBhimJKlFtZD5PzOPt5o=;
        b=Wo5zO0HZlHW0pyteGzSXa7Jim7BFYmnt3VA9vUXl/3GjL+nKC783acMQ/BVjSqUuJv
         XRC1YJh3Pm+62AHiXexlzxOSFiLRi1+4I5/9o1IBON3Taj7SMq5dm84dgzA4eUEBqYMh
         gX1QKQ8hIItbrMACLFJNCBlmkpujZRB1bacIIzauq7gNAwYscrU5j8+GHAlR2xQ8X/E0
         Xi33ReTrSAilBXfrY5c8F6xrUc0BnbQEx2C5A5m/vXnJ9QZOZJMNWDQYLzDAhqNGabyQ
         +eoisTKEJAww4UArkH1BdJPOS65Fai/hXoLgtumpJqMQvPtca3p6RDHbULEnGigXX/BE
         hj4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nb46eOhf;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qvnxZBLspD6TcpB0USRdmKQBBhimJKlFtZD5PzOPt5o=;
        b=HeJwAsYD6XjRQRI/UiDvyLMElK2wdaZOmnA2kgh0Tw+Uob8clzucdJu8QOkhSGMDIP
         6MExLMo9FXTx2HlnbusGFfrDQL/kRt26KE5qIqlFGPyRvVEiyshKH/+t2W6Ah3nWlkZX
         MNEcZyyvlPNCU10+iBnWv39al8jaPo9+eB/oSwfWce4g1Cba81PyVN7eV2pIAzDysj8b
         fBx3SmTSp6zkAJRoCN7u2C9c9MgG0StU1XVW2lvcoJzTrptK4Bx7of9xSvvHSe2Zrd+N
         wEIlmlObqwhMg8aPL0po/dr0jTZD4BTC601ZpF1a0T72xFRtrrHLNuEPz3VBYZZnECv/
         KzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qvnxZBLspD6TcpB0USRdmKQBBhimJKlFtZD5PzOPt5o=;
        b=OGBS4ILQn9RbMY1/aUz8RIBYXGQAwM/e4DNtFSf6oEyI7eIion9j7gg9Fm3stj5Btu
         +rXOl8qzf3pR2CNn9Qbq12QKkwyI8zgden2pzfxR7ZGkHRbq8IpqVkEq0sge4HqQKisS
         dGMtxJaQ59pPWEqgNTspGUN7fH+jn4cAMggY077nIf0BUGNGJ4eAyExusBeqVqYFwHRq
         hYf2DyfNAXtdpvO6eGaSK+E5XFKKUKL00ItRKgPHVlBtYaF15lAq+D0ymyfLtOGo57TL
         RkZCNAsgAoG6T/A9vOEHaIFDThj/qlSgIPCHmd6ba9x5qpUWdfZkP0iTlmA2Aq3YO6ID
         CPzQ==
X-Gm-Message-State: APjAAAXSg2GJGnDVVSyYBHZuPmzKrAzOP/nfqs+8sIVfKLUUulJ9QAx1
	nMcHkvOv/bUOBzi4r41G6GE=
X-Google-Smtp-Source: APXvYqxlPGJzHA0UH85Ibpu1jK1gctisLOs32wi1huRlN08LKP0tqRLI2a9o9aw2cDctudtPJ4oofA==
X-Received: by 2002:a17:90a:fb87:: with SMTP id cp7mr491706pjb.56.1581360101975;
        Mon, 10 Feb 2020 10:41:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls4303993pgj.8.gmail; Mon, 10 Feb
 2020 10:41:41 -0800 (PST)
X-Received: by 2002:a63:3684:: with SMTP id d126mr1510205pga.380.1581360101547;
        Mon, 10 Feb 2020 10:41:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581360101; cv=none;
        d=google.com; s=arc-20160816;
        b=0D+gz8NMM3rQNoJmTL+MtYxCeIpHRqVUoTvjkledoGeEBNblGraIk1JVBAI7HF/5Ge
         UV9oFBuOg2/hREYzt3yqJdWuLDjcb01SsojBcBCn/ZYrxc2GXB+lCFJbeJvqd8mKpVnQ
         Yt/G3Yc/rdovjcoaILQTfNQojL7U6ElvuOxiHoTyqeCGZSVevGXsDUzartrHVZOdYk9q
         GSjR46S+wPSi+oaWUmkSIgvIDvLRveczGjbfW5+NqgOBGPaRyDrHecay8qQWa2I6aDhD
         QjxCZ5MZfWPDmA8Pk6xLW8jIBPMy4jvoTmMwvJqLZ9lqFPcs4Xa5QrBwUSj850YdEx9b
         JlVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+26oPPURci8wbc/keQwshEFpG87fhSfKC1I6X00Ei/g=;
        b=tcefzwIr84XQBxWkxE7dpQ5nupzDCcXLjf3xssR67NUZDYiSXonBtUhCyYbflS6tl2
         JCpP3AauxUgY8D3IxxvAHJ/3mkZTBMAtIAdWdyaVbtHlsNDKhdO6kuitOcIRlfhPgnkP
         vQRCJOLukWN6iEq2DinssKPjR8gDDbbjFtqqmHd3bAwHg2tFGbDnQpGBGTum1aSEvD08
         ESJxgRcj8E+S+JHIocGzsQ6YGW0anwA/xqXd3riB/urd42y5i4WuaZe91YabPqv5DHuK
         oRlhDJp5dt6sAVZnfIRQxe3NrtjwAudducoxnK5Pki7EkaEWoLPNImfyg+G1dDD+qtDC
         Am1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nb46eOhf;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x78si76084pgx.5.2020.02.10.10.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 10:41:41 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id r67so141202pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 10:41:41 -0800 (PST)
X-Received: by 2002:a17:90a:98d:: with SMTP id 13mr487964pjo.102.1581360100932;
 Mon, 10 Feb 2020 10:41:40 -0800 (PST)
MIME-Version: 1.0
References: <20200205005054.k72fuikf6rwrgfe4@google.com> <87pnemzoxa.fsf@mpe.ellerman.id.au>
In-Reply-To: <87pnemzoxa.fsf@mpe.ellerman.id.au>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 10 Feb 2020 10:41:29 -0800
Message-ID: <CAFP8O3JPJvnQhAcF+DWQQGPNOj9vF-nLovzi5uSQ4zrUP1DvtQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc/vdso32: mark __kernel_datapage_offset as STV_PROTECTED
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nb46eOhf;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Feb 10, 2020 at 3:01 AM Michael Ellerman <mpe@ellerman.id.au> wrote=
:
>
> Fangrui Song <maskray@google.com> writes:
> > A PC-relative relocation (R_PPC_REL16_LO in this case) referencing a
> > preemptible symbol in a -shared link is not allowed.  GNU ld's powerpc
> > port is permissive and allows it [1], but lld will report an error afte=
r
> > https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/commi=
t/?id=3Dec0895f08f99515194e9fcfe1338becf6f759d38
> >
> > Make the symbol protected so that it is non-preemptible but still
> > exported.
>
> "preemptible" means something different to me, and I assume we're not
> using it to mean the same thing.
>
> Can you explain it using small words that a kernel developer can
> understand? :)
>
> cheers

The term used in the ELF specification is "preemptable". I heard from
Roland McGrathr that "preemptable" was a typo. The correct term is
"preemptible".
On a random article I found, it mentions that "preemptible" is used
more than "preemptable". So now I stick with "preemptible".

The word is overloaded and has a different meaning in the kernel, but
here we refer to within the ELF binary format context.

From http://www.sco.com/developers/gabi/latest/ch4.symtab.html
"The visibility of symbols with the STV_DEFAULT attribute is as
specified by the symbol's binding type. That is, global and weak
symbols are visible outside of their defining component (executable
file or shared object). Local symbols are hidden, as described below.
Global and weak symbols are also preemptable, that is, they may by
preempted by definitions of the same name in another component."

__kernel_datapage_offset is a STB_GLOBAL STV_DEFAULT symbol. In a
-shared link, it is considered preemptible. There are some methods
that make such symbols non-preemptible but none is used in this
context.

* -Bsymbolic
* -Bsymbolic-functions if STT_FUNC
* --dynamic-list is specified but the dynamic list does not name this symbo=
l
* A --version-script makes the symbol local

__kernel_datapage_offset is accessed via some mechanism similar to
dlsym, so it has to be exported.

Given all the above, I chose STV_PROTECTED, which is the simplest and
least intrusive approach.

> > [1]: https://sourceware.org/bugzilla/show_bug.cgi?id=3D25500
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/851
> > Signed-off-by: Fangrui Song <maskray@google.com>
>
> > ---
> >  arch/powerpc/kernel/vdso32/datapage.S | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/powerpc/kernel/vdso32/datapage.S b/arch/powerpc/kerne=
l/vdso32/datapage.S
> > index 217bb630f8f9..2831a8676365 100644
> > --- a/arch/powerpc/kernel/vdso32/datapage.S
> > +++ b/arch/powerpc/kernel/vdso32/datapage.S
> > @@ -13,7 +13,8 @@
> >  #include <asm/vdso_datapage.h>
> >
> >       .text
> > -     .global __kernel_datapage_offset;
> > +     .global __kernel_datapage_offset
> > +     .protected      __kernel_datapage_offset
> >  __kernel_datapage_offset:
> >       .long   0
> >
> > --
> > 2.25.0.341.g760bfbb309-goog



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3JPJvnQhAcF%2BDWQQGPNOj9vF-nLovzi5uSQ4zrUP1DvtQ%40m=
ail.gmail.com.
