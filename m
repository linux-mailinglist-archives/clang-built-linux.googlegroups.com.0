Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWEVTXYQKGQETJO6W6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BCE1444BC
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 20:02:49 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id m5sf2351985iol.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 11:02:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579633368; cv=pass;
        d=google.com; s=arc-20160816;
        b=gPtpjz3iW/OBfcMe4TiPQuaNhb9J7NNw2veQ3jIGxnakbfftMO6fbY5xKHqjr08F32
         ND7HNtnmzdUMHIYI1YMPopWHDQDAHugODzIZj734WNacVuIDCsfb7aQzHlHKu9apt32H
         KmtTtfLxpzPOZF5T/fcF9HeUPrVx1YUBio0kLNHH82REn4YXz0fCd2G18ovaNCHXIBlg
         2FDj9yLQ5uS+VOtwYuXAWG/q7GED0oLFegOsWaLNSzosyFndcr+SPD43S7XY7UE39UWy
         m7dALmxK1CYdb50G9amnwhvDeVM7CToiEuk9nlSAJbP1PqRJ9TV92XfPnD05BmrlB40F
         AAFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=d62tZqigX0LZf2maGSUbTbMVaur000qnBWGK0XehzVM=;
        b=u9nEK6/Vq8FOLqCcLtWJlClv2CeF7EIKY2jZN0jAZCszY+GgUWenltnDIjiETLOB0A
         ErVMSoOkMivpQr+W43tNcO80B496Faq1+5i1MIuq/ycXOhtcA3UKmrDPlU22d/liZYfX
         pt1xFLMyffOI8Ffv6x15xlPa8OnQI7dJbCL+890n+X8PJrQUnV4RUwByVrw12sMnrywY
         wBDmSJyvuShgRytnJpR1T2JPCUbJsfq0WXal7czaZnPchOqq+wabq3k+UgArNrrHcvUR
         J8r1cIbn5OMlHd2a4C+ED8yGHrb9aSaCH5+p5I7eaVBRA6TuGI4U7sYTvz7y96F7vLcD
         7p0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QnkelPvo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d62tZqigX0LZf2maGSUbTbMVaur000qnBWGK0XehzVM=;
        b=s1Sgq3RZY7nRtTz5QK/jS4e8yS4C9gKm/hA7qqUl8HtL7WCGDCksqq6BbBFWIz3Yh8
         tcsc/+FedZgYfKsOV883SYVcu0xl9wI8eg+yacbckoNnHUo+somhP6mA/xdiN/1Ow7q3
         e/UcJ4fJQKqb4ieZXwgxwiQ0jmFocFxAaMOTRYDmmOpaWJvtJVV/y0CpdYLnd4GJKro8
         6WcEoM1Lw6/cK+E8elrgZlL/akePi5Kz3YTxRy+sB2M70VQsjOTf5Kw2wgHRze2WibS/
         qfP7anVYTn4bqecQ3zCIIwMF8HxAfmFQFfnUFj6SrAn9nd09YHo/wxdMe6giM4S+vixs
         EYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d62tZqigX0LZf2maGSUbTbMVaur000qnBWGK0XehzVM=;
        b=qpY2A9Ac2KU1x2agKVhoJ5gARgyqHQrcBEdlmuFI1ennd5nl12nW0NJOupLoYNDqZT
         eT80O2aM9a0gKPhHzPO2n3ea2ee4UxE1kkDxDyNo4I2DUVnBfeUh6kWrvJ/C7u3TNPKE
         p0XY0epGtcSvdIm10gLn0dc16zW6P7j27nvz7HPmkvWi6qd39Mj393v90EhMSR2pRx4J
         lAq1ToNwLnm7ae0WV3u3rUMPT3p1wweFbcH4kBIdmBfld6tQG8nnM6gXuGq881f18uLQ
         IHgh9cR3Hr3o4uNXuwQAo8Xk0LMKi613yF4fh40N/l7WRoMXKuqYEQVnS5l8Wky/f7In
         sv3g==
X-Gm-Message-State: APjAAAVeBV6P2kneN566bujUS/nDbbYU9Nyev7NMySf7ExwJbfmz53J4
	iA9VskB//22kXBs5yEMmfSg=
X-Google-Smtp-Source: APXvYqw6wIskyACGd4t5ORlWW67rtGmFddSYowabncQqheWtNwyBJZe2sE5p+UaDFJFoi+Sbz4paRw==
X-Received: by 2002:a05:6638:5b6:: with SMTP id b22mr4519297jar.6.1579633368582;
        Tue, 21 Jan 2020 11:02:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2907:: with SMTP id l7ls6417126ilg.8.gmail; Tue, 21 Jan
 2020 11:02:48 -0800 (PST)
X-Received: by 2002:a92:cb8c:: with SMTP id z12mr4643164ilo.5.1579633368177;
        Tue, 21 Jan 2020 11:02:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579633368; cv=none;
        d=google.com; s=arc-20160816;
        b=T18itAY9WXmGpbUvBKXSZwypSoApfMgngiuXk0fK30ubn4mf6fs07VxpcqLNEtysQa
         Xta+/qmseuRP0RIR4XkfNccNFiw7EJQQiMVbLntG0HfOHeIeGYDAGnFJgVRoABizMzRY
         gKC/XBYKXrYgc8DIu6OTqREQnSmEPQFxoA/0x7HAnJrIkANG1TiBztsL4U4nzd8TnX1Y
         GS9c15X4HuoyPgYhSbMH0/SJ24HRjlnaByoouJw5lZ3Jy0YQmbqSIr9V1DQCkC5VsWZc
         rdVFw2mOE+Z8xsdRAxQgyG2BT5IlivDPIMc4OP79/mfDTBWlSGwnBVHiG7lY/NIAm5CE
         unCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bNyNTjqh9Xf964gmgRKYgFMexU7pALAJvxvUiv7FDAM=;
        b=bcxt5GHkA6kmvzp4LtRcoK5O/I+RgFggmZgniW+dxWr0Zas+6Kloh2ghDXQKDLNLIe
         6SJ1uDgzbMIa/cYajmwA8mcYogjE7UIScmilzDuWS+eySXRiBGK9vq6ge32/EIvACoHw
         s9CBbgufxst4GdLul7V23/11hOq3iXrC7JQuFJqTvlKwxmqmPquXfXQPIB+fqeZCe6zK
         IxTyNYjlDOuUVccLw2TZpLkGRWmuO+43iT71MwyHhFf3C2zEimgOkh57Q94nKZnoQGAI
         LiOZz6aUOs+EueQZGQsfdtikO7W7GnxiR2XAJL0dr+rd277bHiUUFvlBBK7+EB72Bki2
         2Ilw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QnkelPvo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h13si1509440ioe.5.2020.01.21.11.02.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:02:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 4so1999497pgd.6
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jan 2020 11:02:48 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr7155939pgi.263.1579633367158;
 Tue, 21 Jan 2020 11:02:47 -0800 (PST)
MIME-Version: 1.0
References: <20200120190021.26460-1-natechancellor@gmail.com>
 <CAKwvOd=30bpBXqrT6LfwDb+YrTcGtTg5NL34dpc3Vkfe11KvFQ@mail.gmail.com> <20200121185834.GA3941@ubuntu-x2-xlarge-x86>
In-Reply-To: <20200121185834.GA3941@ubuntu-x2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Jan 2020 11:02:36 -0800
Message-ID: <CAKwvOd=ZjbN+3ObaOXYcQBa6e_2UqzALeOikruR=9Sn1Rb65Uw@mail.gmail.com>
Subject: Re: [PATCH] scsi: qla1280: Fix a use of QLA_64BIT_PTR
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tbogendoerfer@suse.de>, Michael Reed <mdr@sgi.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	linux-scsi@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QnkelPvo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Jan 21, 2020 at 10:58 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jan 21, 2020 at 10:43:06AM -0800, Nick Desaulniers wrote:
> > On Mon, Jan 20, 2020 at 11:00 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > -#if QLA_64BIT_PTR
> > > +#ifdef QLA_64BIT_PTR
> >
> > Thomas should test this, as it implies the previous patch was NEVER
> > using the "true case" values, making it in effect a
> > no-functional-change (NFC).
>
> QLA_64BIT_PTR is defined to 1 when CONFIG_ARCH_DMA_ADDR_T_64BIT is set
> so the true should have always worked, unless I am misunderstanding what
> you are saying. The false case should have also worked because it is
> still evaluated to 0 but it throws the warning to make sure that was
> intended (again, as I understand it).
>
> > >  #define LOAD_CMD       MBC_LOAD_RAM_A64_ROM
> > >  #define DUMP_CMD       MBC_DUMP_RAM_A64_ROM
> > >  #define CMD_ARGS       (BIT_7 | BIT_6 | BIT_4 | BIT_3 | BIT_2 | BIT_1 | BIT_0)

Ah, right, so either QLA_64BIT_PTR is defined with a value of 1, or
not defined at all.  My bad.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZjbN%2B3ObaOXYcQBa6e_2UqzALeOikruR%3D9Sn1Rb65Uw%40mail.gmail.com.
