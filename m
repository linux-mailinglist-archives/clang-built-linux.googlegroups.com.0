Return-Path: <clang-built-linux+bncBDAMN6NI5EERBF7N5DUQKGQEVHR5API@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FC775B20
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 01:09:11 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id m2sf11068973ljj.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 16:09:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564096151; cv=pass;
        d=google.com; s=arc-20160816;
        b=DkknUCfrL1a64YLhLFA/owPvGgvC8agO++Yz0CQtJnaXAyWhrBion4zbfwr24qDL0S
         /VdnRSlwM14t8uZOoeGD8tAcG1JMJ2wECGwcP+TZXmPZgsuovWB0ESXUyXrY1mXx32rx
         3vvpFdfDJIE2AmwV1RBlpH+FYLCf7ReHkqJxPMlqOf6l9a26kN1j9jlktmkk5nPpeX1U
         FcFl5n3myUtaeRa/2fsZBCmHuQ74P/hH0p200SjwyeyV9qYctWg6y79r4wyVzOMxN/HH
         H8lE+7uYc5QdPWC7m4sgADZA9rBOqBy8Qdt4gUS/tirz8AlUxJWi4XHmR7r6jmgfgUz5
         h2Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zQE4fxR9d2JhefstU60BidjYLCp+tl+cn/rHZH8WC08=;
        b=yMvSszK4jSdaI3sPsCj4/Ns/Vyy6hCJdf8A1tEXzNA2F1JACT2DqhmGBM5GeNbaKB1
         eWmMC/Sa1bdDBSNkiQYlcFdUIM6WnvvBx4Z+hOVckzo4dr6rk+qhjaxFtObqu4wTLMl8
         F68Qtgn1Cx6QduuecInuduqp9oN8Y8KEFuHCBQh0FA8SvqbTVEQWDL4D0ajmCahKsKhM
         hpEAn3XkAKhHN+XhMCY/BGBZALqtPJUsGs1hp5J+312auAzkf10Vdp0NjQyB+FToAgWu
         qHjGqjrFhQnzhYT0zyevB5SUNe4QMIsgzNgMTQkzN1Y9pFCDFRLIDwIWg8l56ZK6O+52
         BE8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zQE4fxR9d2JhefstU60BidjYLCp+tl+cn/rHZH8WC08=;
        b=PfmgSmt1FHxpEpUBHCzcF6eYR7IXIfwJ7XMhWBd5MpwSQPO/VOXKsG+qzYsi5ecwOF
         guyJHfuUNijDKNqrcZXhB7f1SL25NNkaG0PfnU39mzbdCRDA2rDMyzl4lMlxY3uljn6X
         EV4wr6jxfwfQ9pu802tJWiAo00zKjapJi9J9/lZS7H/MJ79A3VUAeYW5FIdg5XMbKIFR
         65e/mYapltV1AsTCrJyhfW2h26v+FOubrKaumC+HKZD1rIEeSN17nvsSNaa127bY9Ocv
         YuA3rKfKSraxpwQRJGcPknjSyN9pzjzn/1cr7qHSASRfNv+zFFnI6hcVIgIDo1TkTmLZ
         b2SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zQE4fxR9d2JhefstU60BidjYLCp+tl+cn/rHZH8WC08=;
        b=CIfZLdOM/h45jVFMjuOEIkBTizu9R9Qba9yrizThgHDuX+f3joM3Nu3cMY9Zj6ZClH
         2QsCyi4eXF41hBwEIhjCWKHjdRVKBZmXs7mRMN5w003iPG7mTSFKH+L5gUXzd1iD4eWU
         d1wv3TIR9S8iPg7wjOEneTo9KbN4jvqntRO45qZiljb+Fyqxip7UdwU8D2pI3lp2Aijb
         lxsjKFQaNB75loFutpTNYi8bFbO/zEJIPC4Vu6kuw7ISiTT3MaYlC7XYFrv5LHQ/QKCh
         yCgGT1gUZL1MIH1Jt1/+BQkLSUzgYiYuTzRBLy8g8SfffDhocOmHGQYrpMYXN03rUg3p
         lUwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJ/AKUp2XelpFd4VLGVzuBHI4rPp3UerFuEdX3J/TUyqKGef7v
	0/5nZH0ZnIBab9oujndmBPM=
X-Google-Smtp-Source: APXvYqzqAInYkf8wBZH9Z5PNAZqOMzj01Hl+T6UZBJmVIPpkihGOwwh78xce9sxI6wN9EZyOT4idAg==
X-Received: by 2002:a2e:8744:: with SMTP id q4mr46599895ljj.77.1564096151044;
        Thu, 25 Jul 2019 16:09:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9dc8:: with SMTP id x8ls5894304ljj.2.gmail; Thu, 25 Jul
 2019 16:09:10 -0700 (PDT)
X-Received: by 2002:a2e:2411:: with SMTP id k17mr9040352ljk.136.1564096150604;
        Thu, 25 Jul 2019 16:09:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564096150; cv=none;
        d=google.com; s=arc-20160816;
        b=I9WWy4rtl4jLsfb8C8zkc2RIPuvQBeq5ol04nkR6wrCJpYpHs7YYQujKZyBs8ILFoQ
         3yTQc28tQDkJJXvcIFPCr4uLP/bR9KkQdbxAUS2QDvAXAsXmjJBcLuO8jz8RzDKp0jCy
         ipwShuPcd96/4bvmWAgAw/AJIrrRcgfCAK2mueBFFtBPzHN1ql546+UG8JqnX2u53kv6
         ONeDDVKuDh6pqfDojbKcUhr6BMJATRgOQG7HYVaq0XhFZ8C64I08bq3UFHVk9iOikvSH
         WJ0G0p5tD82G31m8EjWH1KSQoQwEj1ROvjm6R9mc4H72WvdF+sZta/BP1IAuEX9s0XUf
         Ii9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6tqPsGLyY3Go9nejBxBymwDqGltFJRCdDMlIjvTLBug=;
        b=b38i2kduVEWWsbnZdw+ZLW8JWQTgTLf1yqBt4vjG0P0UjOcr+8jMCgvO96KG4BJOhD
         onJbbnOyf07tbEauTugACclQzStIlq7dVm+BDHWNxvCFuEoMqGaT14AOe1als0Kwnzgd
         uPM+Q41orM1OPeQX16XqYKQapr/8RB9HXBCbT9t/us3efUGnki259lpYn2Du86QXfLHJ
         fEVcZvWnr6DzrCgYm+boS5VzHq5xVZALi+D9SPfEe+kxqtPcGwFEhuhtPzRn8fVJmtHX
         F//IBefQxkJ35MOlAlss0HX9RjFDvEEZsKuGxuJqIigtTnqUq7m6CCd8DZw+slPH4rR7
         Z01w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id q11si2481294ljg.2.2019.07.25.16.09.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Jul 2019 16:09:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hqmr9-0006fi-T6; Fri, 26 Jul 2019 01:09:04 +0200
Date: Fri, 26 Jul 2019 01:09:03 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
    Peter Zijlstra <peterz@infradead.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    LKML <linux-kernel@vger.kernel.org>, 
    Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v4 0/2] Support kexec/kdump for clang built kernel
In-Reply-To: <CAKwvOdnBKcEFkv2qEWPaFEjPSmR_SXBo2ZGz7ho9pBc88dZJBA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1907260105280.1791@nanos.tec.linutronix.de>
References: <20190725200625.174838-1-ndesaulniers@google.com> <20190725200625.174838-3-ndesaulniers@google.com> <alpine.DEB.2.21.1907260038580.1791@nanos.tec.linutronix.de> <CAKwvOdnBKcEFkv2qEWPaFEjPSmR_SXBo2ZGz7ho9pBc88dZJBA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Thu, 25 Jul 2019, Nick Desaulniers wrote:
> On Thu, Jul 25, 2019 at 3:51 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > On Thu, 25 Jul 2019, Nick Desaulniers wrote:
> >
> > I'm really impressed how you manage to make the cover letter (0/N) a reply
> > to 1/N instead of 1..N/N being a reply to 0/N.
> >
> >   In-Reply-To: <20190725200625.174838-1-ndesaulniers@google.com>
> >   Message-Id: <20190725200625.174838-3-ndesaulniers@google.com>
> >
> > Is that a new git feature to be $corp top-posting compliant?
> 
> It appears to be a hidden bonus feature of:
> $ git-send-email purgatory/v4-000*

Care to poke the git folks?

> > > V4 of: https://lkml.org/lkml/2019/7/23/864
> >
> > Please don't use lkml.org references. I know it's popular but equally
> > unreliable at times.
> 
> Oh?

404 or silent fail are happening on a regular base and of course always
when you really need that information. Murphy's law ...

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907260105280.1791%40nanos.tec.linutronix.de.
