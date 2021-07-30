Return-Path: <clang-built-linux+bncBDYJPJO25UGBB77DSCEAMGQEZ5YBB5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7B03DBD76
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 19:08:16 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id s8-20020a0564020148b02903948b71f25csf4903231edu.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 10:08:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627664896; cv=pass;
        d=google.com; s=arc-20160816;
        b=orpaVnI5v6YkCrR6cdIfowJgjfOTz+MfXmvzcmlpr8WVI0d+DJZ6P2m5diz1qHv9Eo
         jWtTG3xDlPZZH8paiA91qPqQVU/IH1uvMFStxSg1i4kbXTTb8sEQQJc+HAoW/XaSXS26
         QEBIQ9PiiIje7MHeVs+0E8aqcQiW4Vjk+Qp/N8fWt95Qr5a7d/oHUd6pvIN7wIejXrG5
         wzvC+Xw2PQfl7UV6gTGuPUUvtPDSByObt5d9MiywsJ4hw/h6r/bISsFeVjRPItEUlpEO
         inX5Kf6/tgjFbLeRhJ+upTF5EE/C646KJzmy7czSuM1kK8aLeE1BdarXkxB8Cm8R0Fxd
         jvMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2ybPtoRy4veXumJljCyckeCBDNMyXCz41xzBhpyHHgY=;
        b=yi6Wb9iuUqWzQmFj1rvMxZ4b0IvBtAhox5D3bNevuH/Ci4FzmIfy9B3qk7cc5dyo5B
         GVPqCbBxJiCb/LR6t3kK3EXKSFWQYsuZA2LwxAp19z5ZHfsXI2J4ryVejx5z96f/VyhW
         4wSRvUDOuvKXWt23Wrl1jqEDz7mdB46/AcfxhC45LwmaTL7aTAsl8XIs0ZemZXTdjhEG
         63nS5u03iqSPPcrTCovDxumleZOVw8su6T+f5jyjVAAcIV6HlfdET7qzyTgB95RFbR2v
         ph9I9QeMkoRtJ7KVMeu72xPFS1Th9jp+HnxLQAkIB+VTbAJUwvmLDQKmSLl66rzJz088
         S6Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C6FDsp9e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ybPtoRy4veXumJljCyckeCBDNMyXCz41xzBhpyHHgY=;
        b=fNpK2WQRiib833JL+uI1AGQ+g9C3+fRrC80uTra0TnpQCReBvVbLj+cJSkNQvP6Czo
         IE3rIbz3iM7PNTEVTVneBJpQexUqPbz26PmOYtpFkLXhAKT7a773BNP+ABlhC/HX44qQ
         YHn+Nw7kxYePtZpo9gluy7rIsoDPgn9n7ro7AQTG0EHs/W8vKnJ1QVnGC56HXx8E8KGb
         k+yvCXHeTL9g6TNa91RQtonUyuPJqTbBGcBDE4HIIN1p6XQa48degQ0eAqD2i8sZAJdG
         wGZjvn957XFSXzeN65UyW3rNryoPW6qdG4QyZmf7w8gEvPEpKWXM4FZEXKXdWpEpj/8P
         yY+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ybPtoRy4veXumJljCyckeCBDNMyXCz41xzBhpyHHgY=;
        b=JyJZ1zaJBgMSYLuAS+OAywdLf4IDvj7Wh6R3GHcJ82Dnr/oc9CA5UPJG6NFxmtLgu1
         z+1URhedgmds7NvsTCge1+Mi6Uw/SN+hoRJqR4UrgERbApgBUEhhh/yygMMXeZu+wSfz
         oSPy+b81REy8PHMeLQSQWKL7747eBzNllaBFyhgNDSMaxppKCiVt51ti8RRCKgPz7t5t
         xWg+hFxD2rWVzTD40cQfc1f+NbG85FNMcz/vy4yW+kg2r/Nxixc42BVp+1oCNiLSWxr2
         a38+LJK4JUUQihorDRrHZ+gBmkWQXy+e3bAzbpli7OCdcgyh40dPDu/zVMLO7IeL0Phz
         dGdA==
X-Gm-Message-State: AOAM5329a+2UNAjUekO6irsVCVgLIFARfY8PSNeXMQAao3bENPmic/4/
	XP7OnJtfYI38OTi7kJi6PnI=
X-Google-Smtp-Source: ABdhPJyQPBFYNLW+W+MKPI7IZ5XD5FbXR85YzQ+QB+GFuKE7lF9rnsL2b7toNxObA0htE89G+et/cg==
X-Received: by 2002:a50:fe10:: with SMTP id f16mr4160188edt.208.1627664896149;
        Fri, 30 Jul 2021 10:08:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5604:: with SMTP id f4ls1097537ejq.6.gmail; Fri, 30
 Jul 2021 10:08:15 -0700 (PDT)
X-Received: by 2002:a17:906:7302:: with SMTP id di2mr3405104ejc.409.1627664895229;
        Fri, 30 Jul 2021 10:08:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627664895; cv=none;
        d=google.com; s=arc-20160816;
        b=nCVWUVk3dGN9baUSI02tA58E0lBXHnXOJDEYRRgsth/V7li35zUxv4jtLzFeARV6Dw
         3aDPxekUmCIqhRlszghaWz345VlJfIvaV77e6E0UgGc8Y1Fe3AGzLttaYpMTAwt1pj4i
         Uq4Y2tzcbgmT+KIG1j8Xw/c62Q4Z+ZcsY64VY/UWCLbBGE0U2m4pPHA71RGWefrnezlX
         W4FpBHhl9MKEljxa1oCpffp5bd31oQ8R2VHHTCF4H+fzI5V3h9VlzAa5Ay0TaDzzgUpM
         YfgIRsZLCly2Yy3K6m5QJFw8Tdq0za3FvObvhm1eA7vKZkkGLdZZjFN+SbWK17/IuVQc
         gLgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IV0tGa4+rpa0rWOKVy/RYqy1amnye8o4Jt6/b1EaRas=;
        b=kBj2NKOeis2d4SRBL8WT49qp2bg0I4mQny4LmYmrOGwg5ivLa70RuuibIPi6nZPGnZ
         4DIFiuvpoUfaiJWfrPxBa9K9R2zgMsrsSYuPa5QACqk9aEgGUlirA35mN9YBmkGWlHlF
         Qib6lFGodFtR5AHAO6GjlJEt6QVPoC2/eS6SnWuXFyo0QZNpmM4VJTamTtP4cyvlCR/E
         UwPldJ6DRQCYEAYFDZMou0F0DUhKPfBWV4sEkJvwV7UoXPwIk3rF2Bs9slcgcyll5UYg
         nU0pJLL03p4s7j8HtwJQ8AigRN2k/2jSQ2OxC9hQnyewBvjfdftMfFH8T/xB2HwSFwmQ
         QWwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C6FDsp9e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id d26si141423edr.3.2021.07.30.10.08.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 10:08:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id r26so19262633lfp.5
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 10:08:15 -0700 (PDT)
X-Received: by 2002:a05:6512:32aa:: with SMTP id q10mr2512533lfe.368.1627664894662;
 Fri, 30 Jul 2021 10:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz> <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org> <20210728213730.GR5047@suse.cz>
 <YQJDCw01gSp1d1/M@kroah.com> <20210729082039.GX25548@kadam>
 <202107291952.C08EAE039B@keescook> <20210730083845.GD5047@suse.cz>
 <20210730090054.GX1931@kadam> <202107300937.C7016A82@keescook>
In-Reply-To: <202107300937.C7016A82@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Jul 2021 10:08:03 -0700
Message-ID: <CAKwvOdmtKszUS0-OyGMHuhqjyXQC_283KOQOouWWtimYCvsAoA@mail.gmail.com>
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy() region
To: Kees Cook <keescook@chromium.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, dsterba@suse.cz, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bart Van Assche <bvanassche@acm.org>, 
	linux-hardening@vger.kernel.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev, 
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, nborisov@suse.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=C6FDsp9e;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Fri, Jul 30, 2021 at 9:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Jul 30, 2021 at 12:00:54PM +0300, Dan Carpenter wrote:
> > On Fri, Jul 30, 2021 at 10:38:45AM +0200, David Sterba wrote:
> > > Then is explicit memset the only reliable way accross all compiler
> > > flavors and supported versions?
> > >
> >
> > The = { } initializer works.  It's only when you start partially
> > initializing the struct that it doesn't initialize holes.
>
> No, partial works. It's when you _fully_ initialize the struct where the
> padding doesn't get initialized. *sob*

I'm pretty sure that this has more to do with whether or not the
compiler applies SROA then observes uses of the individual members or
not.

>
> struct foo {
>         u8 flag;
>         /* padding */
>         void *ptr;
> };
>
> These are fine:
>
> struct foo ok1 = { };
> struct foo ok2 = { .flag = 7 };
> struct foo ok3 = { .ptr = NULL };
>
> This is not:
>
> struct foo bad = { .flag = 7, .ptr = NULL };
>
> (But, of course, it depends on padding size, compiler version, and
> architecture. i.e. things remain unreliable.)
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmtKszUS0-OyGMHuhqjyXQC_283KOQOouWWtimYCvsAoA%40mail.gmail.com.
