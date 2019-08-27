Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBRMGS3VQKGQENEKQTHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0C69F341
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 21:23:51 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id s3sf518oia.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 12:23:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566933830; cv=pass;
        d=google.com; s=arc-20160816;
        b=f613QiHF9WZfxmK+XCnOFlanblC7aAxmZp/M+BjqoO4cqn2ZPH+VFRJMD+b9oxJfZs
         em5jN4VjrPR4RKJs5njzh1d/nS+FSAaX6MVDm+KX6kjuvrzIoVTRGwHoic+mX6vbYi4a
         UNDrGFo3ijJSKEnyLsebIzghzYQcs+tUuAvFkulHqKv7KG6SYKdrO2cxCt5ZP+n1+8if
         EXL1GXAKSIZfbgCMk2GotXLitQ2LmB5N1pPSKqIofmPV6tGetSZ53KdtwFnJueqmTH2Q
         854MaQrdskz1+ni0tw0PhXk6xFNke6AAEHFTOCj6pOU0xZpXtubpR3XXIzaxZhUPIGrp
         xxZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GAipc2lEJAED0Hn9NqtF7Kh2KIWLtjoACpLnjE6tJwg=;
        b=KbemS/dnu+4SsMYZnlkS1B8zb3bU9vALICPSWlTEXHgjyUHJvFtMrGYEQqKpDhIVoZ
         qKazW0jywvKGi5gJORONjwYwqCoOCJFwi7Kgn6/EZSWom3QgSuiVui5yN3JxYcQLKkdF
         oxNUPtNHoDx229oMh0OUxTziNunGasNON/RAq4sgIIp5zBKK7OgNNd4N8vBL+ZyU12tD
         K7mxpuW46dKC+6jL/OvX2yX22OnLr17D5kseEVTw6nFVJ3aaKHU1DE3uqAwNm2b6kDf8
         rN5wiBit1ApnviV7tiJxtis3DZ3OBfcxxkswFOtIofcKhaq0TDnUUR0jfsJ1iLzB5cOG
         52Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GAipc2lEJAED0Hn9NqtF7Kh2KIWLtjoACpLnjE6tJwg=;
        b=Srt1OcEoKefRujyGSvf+UK/3SaOONPTlJ/0yW+BlcVPOMScSu3QShOJFa11vtv7o40
         3p8OUUg86LFw0SsR8/MMbzcz7kWWsts4rdg++cq71p1dul5hCXOe5WiNxCh13FddE1Xz
         xZuWTjl8Y+0YyKyzpDt6spvbxF1+oNiTaIRXLPN8ei9ru0q0dgnXQ0/ndJrdtbxiPmeB
         8BFPuKBpXhe1RcuirYQuPUuCU4Z/0ZKhEfDbJK1/dNpaeFJ2kPuoLi6tI8FoTEjXkQLu
         soO/8MIyvkN9yL0CtXWXcL46Vz5aW+WwpM5T9sH6TSmKvsOUaLixIp++o1VoCpNi6w83
         U/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GAipc2lEJAED0Hn9NqtF7Kh2KIWLtjoACpLnjE6tJwg=;
        b=Tm5Rl+yHCqVaSLrD3sDVzZUazl6mNg/U64Mr4VlV4dN03FvQgsPqpBCEIoVvfb2WOe
         fKYKRtgdvDlbtmyWKYtuhw+VoQ77qx4q/83seh/8VIcSmhmsFUSVRCTNs9kSLm6AtpBY
         CwiBxlK/hkgk7Ctseuiy0giDfod4uhKzlbSNhOouoBH1T1vNqcOyhb7zLzvNPlPqC1pI
         shX5QlF9L0S+iEI0BphpFLseXu+XyWyusb8WFHwDio77M/Zb9PzUmiohDEzyDV1ejgVv
         84y/mWDscuFzM7NrqOOllgUNRUJClV+kTdArYWEwx+l+E59mdLNSeTkNJTc0q43Bdcq9
         nu1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWiBlL0Fgv3bBOyLZ37UZL6hkE7N9V1wxyirxQ9g7EjNGP8GlWX
	nwQba6EKcRddsFJlOlNQfJ8=
X-Google-Smtp-Source: APXvYqwq5kXwaGSokNBqVPR5vBytPgZvNkcSmEt40+C9tG5D20mh/ZvsI2PnkRxovJ4NtqaXo6Aj7A==
X-Received: by 2002:aca:5f45:: with SMTP id t66mr192395oib.111.1566933829886;
        Tue, 27 Aug 2019 12:23:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:961:: with SMTP id 88ls64681otp.8.gmail; Tue, 27 Aug
 2019 12:23:49 -0700 (PDT)
X-Received: by 2002:a9d:5545:: with SMTP id h5mr153578oti.209.1566933829572;
        Tue, 27 Aug 2019 12:23:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566933829; cv=none;
        d=google.com; s=arc-20160816;
        b=rMZKerQ682aBwaiX9SIoBoviUoryBaQ7DKNgkI0a6VYWarEjHWaj+CXG8Eqsx3hALB
         azmAirDZbzVvSFMwKOAcy0xIWdPlyYRKRD/sd2S9Y1gCvHH5tlj4rCGMLFIxYmJbmtfu
         rbyaAj/zDoVSm/Mh5n38dRKpgTzb1P7gQQ85S7hlSZQgzv585T+NlwVGn/10i2qJNnrN
         wwbYkNs6/WTAnqTp+jY6WW/Z5Jf6GaQ85J/BzyWuZTKV6FGT7hsB5x76c8FFO0flVbUP
         KncGrHe944CZwYiM3I4bpQhT4PHxR/glowIbw/FVLEyIGeQV+AhOTHCtHlvJLeN4uEO2
         NSFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cff3cg9X2h4s9FSknWJVlUTevlRCfmxAN2+4Bb0b/P8=;
        b=dFF0haeVQRvxu26OfPLiNKtvVNKwWMJcFhCX34EgrV4QEH58FcIhWhb21kezjp1YTP
         JwrrlhgSqd7Y0z2thS0/RDY/hpt5de9t6pyIOyehww2GxnLPCwmFwx7Gd1WT5owY4rft
         S2B1O9/vA2HiVZwZUyRq0khgxh9iL8AWhY0Q/lHrWivA4tOEasopkX5xUJWXmInlNedy
         qBOG8hfm6sbJtzyjfzqjKSpkcLGfSgrJBlnEIyoeHcda6q7j7+TkbiciBnvcTzLBYPGc
         vx/WWo4Re1DrSQkHe0RyM6MdDd2LfKZ5R/bZpA79ngsQcqD6Rq7USlhj1gwZVITJHYb6
         lLyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id w3si20922otl.3.2019.08.27.12.23.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 12:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 64F383082B41;
	Tue, 27 Aug 2019 19:23:48 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8586860F82;
	Tue, 27 Aug 2019 19:23:46 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:23:44 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Metzler <BMT@zurich.ibm.com>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
Message-ID: <20190827192344.tcrzolbshwdsosl2@treble>
References: <20190711133915.GA25807@ziepe.ca>
 <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca>
 <20190711173030.GA844@archlinux-threadripper>
 <20190823142427.GD12968@ziepe.ca>
 <20190826153800.GA4752@archlinux-threadripper>
 <20190826154228.GE27349@ziepe.ca>
 <20190826233829.GA36284@archlinux-threadripper>
 <20190827150830.brsvsoopxut2od66@treble>
 <20190827170018.GA4725@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190827170018.GA4725@mtr-leonro.mtl.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Tue, 27 Aug 2019 19:23:48 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Aug 27, 2019 at 08:00:18PM +0300, Leon Romanovsky wrote:
> On Tue, Aug 27, 2019 at 10:08:30AM -0500, Josh Poimboeuf wrote:
> > On Mon, Aug 26, 2019 at 04:38:29PM -0700, Nathan Chancellor wrote:
> > > Looks like that comes from tune_qsfp, which gets inlined into
> > > tune_serdes but I am far from an objtool expert so I am not
> > > really sure what kind of issues I am looking for. Adding Josh
> > > and Peter for a little more visibility.
> > >
> > > Here is the original .o file as well:
> > >
> > > https://github.com/nathanchance/creduce-files/raw/4e252c0ca19742c90be1445e6c722a43ae561144/rdma-objtool/platform.o.orig
> >
> >      574:       0f 87 00 0c 00 00       ja     117a <tune_serdes+0xdfa>
> >
> > It's jumping to la-la-land past the end of the function.
> 
> How is it possible?

Looks like a compiler bug.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827192344.tcrzolbshwdsosl2%40treble.
