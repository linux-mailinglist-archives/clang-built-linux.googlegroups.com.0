Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSMTY73AKGQEGKSW7HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 207411E8D3C
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 04:49:47 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id y24sf831913ool.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 19:49:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590806985; cv=pass;
        d=google.com; s=arc-20160816;
        b=LeJUIXZZxjjwQNekyCl8a50lA5c6MwWPVOuWhIT0NTNTqkzt/rCDAQUmvvpLLSl024
         HAqrK5+IQdGo81FLcAEvydvCdSEgP3uVZ2dX0rf7pM5iP1TgtomL+gSsTdFVwU8/mEtW
         Vm91paNewMFB0/2FuXAC97H4CQuHuW0lW6Im71typy57+VCxeyUk01jTJcWFJ78+cjIi
         w3cCSe4NOpaCdUttmEFSFmAaKvmfVdFQ3uLshygfHl9DuVjuymlj1IotBC7Oeie+PdZU
         B1j8l+PNBqXYlbk4/ThEXBu7sN7BVmVsVPYV0LQhXuddQ+in77N9B60P3AY+GbTXYM8Z
         cDDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=bE3lwb6njmymANkAq0y6DgMRkgoPwrDcI3JMd1ARJFI=;
        b=NEDAkDc6ijSF/lXqDJTNZ1s9APA7eICZxXV34RCsozVXIChoHd+N3lppHuRx2Eji5K
         vN78+I/3TzVmRAiXV3DaS5QAxSMlcAF3acBMvTnTySPXmzj/bZ4YudIg7r9eFNIVoQQb
         wvLo9pMEcnRDsvlsnZviP8RZPRjKRc2ZLE8MiwJLxeSJ2JcM2F3U0uj4CdmN8spitW13
         nUVVYJQhAo7rLZh8nfFpEb3KSl2Q6vzay0hD291v0G6FI20fdN2hSeGz7l/Blia/Diq7
         Ub6GeA1j0j6lvRHGB9+alwSIr+KIDwaW2WhQeVdfW+8bx1Tpob7WA46WZyTBK9Mk6asy
         aclQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QUyCXkd6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bE3lwb6njmymANkAq0y6DgMRkgoPwrDcI3JMd1ARJFI=;
        b=Zrf1uNZvueDRBOQgTLfliGrYwOe0IRsb67PfhBe3K+WI8CI/ReuKOykJu1aPWMv/xZ
         l43gcGkSM/2J8FZ2geuH/d1GMGtU6m8p+ZrVNLBZNbgeGdJ+FC8OMmbScVgi8S0lNHXb
         RH2rPX8UhVZfNcPmEMAscnfNbw0dXGCNSLyOt6Uvci/mYmLdciBuOvZ2Q2JyxXq1WBX1
         2srFCKxDz4FluFQPqXMHbC7OK4WyHCwVCCsbNwJ6OKfZ4QuajwTmN2yk+tpqmiIrmnog
         0d74F2E49bwyB7jVTNuWJVc+gNkklC8bhkqMT0DxDrCH9qNAfsGI2U8zo8GVRjUOC5cZ
         lXAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bE3lwb6njmymANkAq0y6DgMRkgoPwrDcI3JMd1ARJFI=;
        b=ZnrKK0hQvlYmYLZm2rh1aB590UK7NkuwYcTCuypHZaeyPxt+gMKoPWjFevYawaIUeO
         4lhcgY9ShFesHbCeiVVP20x2CuUu3TXDnO0HwiAqZmCm8M0Je/GEBXtESifmSmiGFDRW
         nXeXpYNQ3nGgesAs+Io7sWcqmHoM33SUnZEWtyfOrGViNe4DQIZMavNUki/1GOH7XA3P
         tbr0xzqSWdXwJh0sKVkjGNxTgcQAfZi18mlufiPHVgCHrYDOGxUrrylnuZVbwSYkr7gQ
         /qz9s+saLS296Gg66qC6JowPJMXxqsNA5uLPFwwWkuemKepJuFmI5jxeJN0MQ3LlgIcy
         NdTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bE3lwb6njmymANkAq0y6DgMRkgoPwrDcI3JMd1ARJFI=;
        b=joT5zIv69aXUB/XfLkXrZWpXPhre75JqOt7umZRb2Sz+zCLEmXIvX4/kLj6y5DL2Dq
         FYfyw8ZfDqBahJwSxXyFS78YB3j2EliTSzaXhm0H1XTVyUCu9OSYAoN1i7oKydXOekQo
         nT1ooTgr19s9tegGvSjjxoDpJOfglmJy4p4mRDWBAeNmtojUbpYD1aKL0l42h3zMXPaH
         MJaNO2wRJ3Ko6TS3Dw3WJ13rAGaqCmrzK5A+Y1B6RS9HC9Ch/v0JnDU2v3y3I0ovpwRX
         CBVMKopSClTXUx7MrdcoABYn8AzqEHx3ON6II9iW9Rh1EszrFcJ2Rry9tT/C40KegGPT
         kRRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hhNS7hZseDjBaUjw8gLFYduiCrjK7wjhVJsIobbN7A2XRLaRC
	CNQzqJJmMS5bI2LnRSpNiic=
X-Google-Smtp-Source: ABdhPJzwSc5gVkKwdB87mQLNHEPg1mefHBR6sT4s/v8zkdyIX5NB8Z605VvRikH0ouK6KjyIUz3KGQ==
X-Received: by 2002:aca:4254:: with SMTP id p81mr8051754oia.68.1590806985624;
        Fri, 29 May 2020 19:49:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:502:: with SMTP id 2ls1565207oif.11.gmail; Fri, 29 May
 2020 19:49:45 -0700 (PDT)
X-Received: by 2002:a05:6808:4a:: with SMTP id v10mr8782000oic.33.1590806985310;
        Fri, 29 May 2020 19:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590806985; cv=none;
        d=google.com; s=arc-20160816;
        b=JjCbYAP4vmusGA3BiHd0PFNLrbXL9yXrLBk59vkqi9QbKkODrI+h7KqEfyYjTBtngp
         fkE6qRud9TPzze2Q8PqkCI2yi+u+ax8dPcyqZ/+pMoue8Rr909TIctiau8Q/gEN33hKK
         nShZ8i0AmQhjQd/Vbge1gesCvtiwdMa7qKYJWkw7WQ662ifiTxa1JdH7BPToEgZjo9kg
         b6/08+Wj0rVFz/sfsgoQwdGzwlbe/qAAueiIC6ALyOzg2dZzRQu4vz4YKiXWlx1jNLVh
         NQgJkP/X/+Jko7AhpfrdPPsr8GDV2b5q7B+cWkNwEEqsv6oruM3w9iut+Q0ocFVnZjn3
         8ZHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jje/5IhObPA+c/Zlgq/cyu1iClYpt6YXbC2KMGtWJ1c=;
        b=bPSAa3P7mF0yo8qrdsftMOqKGLAKBavVJEjtn8gu34E9CzETsqN4ZZAEpoS6NSW+fz
         XE7kLzFZWI2lKWx9D+Kf8gu2DJHaFMtS+rGXWG9mJ23aSJaiHYQ5x9pZ6aUDgTa+xUCz
         +oE1pHok5pMUPa94m5ogJC/+wfQP2oWy5C9LZd1qpbiKvdPtcUAHKMRBwGp+e+Gkh4VS
         9vrCZvR0Y/Pxk5G9EcRn/N/iLMoIIiAnMp044a7RgW2vy1NXT2TnHWmKn3NJADFfOwTA
         iwh/7tbp1iuJqiVRsO629sG1pwxplyWDwquKr5STpbaeHjpLRwPywPjBb1N7PmYd88gD
         6+Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QUyCXkd6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id p28si1059747ota.3.2020.05.29.19.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 19:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k22so1943875pls.10
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 19:49:45 -0700 (PDT)
X-Received: by 2002:a17:902:70c3:: with SMTP id l3mr11275860plt.70.1590806984520;
        Fri, 29 May 2020 19:49:44 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id fa19sm672964pjb.18.2020.05.29.19.49.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 19:49:43 -0700 (PDT)
Date: Fri, 29 May 2020 19:49:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	driverdevel <devel@driverdev.osuosl.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer
 check
Message-ID: <20200530024941.GA1287405@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
 <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
 <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QUyCXkd6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, May 29, 2020 at 10:31:44PM +0200, Arnd Bergmann wrote:
> On Fri, May 29, 2020 at 10:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > See also Nathan's 7 patch series.
> > > https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
> > >
> > > Might be some overlap between series?
> > >
> >
> > Probably. I really should have checked when I saw the number of warnings.
> >
> > At least this gives Mauro a chance to double-check the changes and see if
> > Nathan and I came to different conclusions on any of them.
> 
> I checked now and found that the overlap is smaller than I expected.
> In each case, Nathans' solution seems more complete than mine,
> so this patch ("staging: media: atomisp: fix incorrect NULL pointer check")
> and also "staging: media: atomisp: fix a type conversion warning" can be
> dropped, but I think the others are still needed.
> 
>         Arnd

Thanks for double checking! I will read through the rest of the series
and review as I can.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530024941.GA1287405%40ubuntu-s3-xlarge-x86.
