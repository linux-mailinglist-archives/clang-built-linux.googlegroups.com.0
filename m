Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRBPFOXOCAMGQEE7C53LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EDF370E0B
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 18:45:49 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id v4-20020a2e96040000b02900ce9d1504b5sf1711639ljh.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 09:45:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619973948; cv=pass;
        d=google.com; s=arc-20160816;
        b=rc8GAw9TK8F0AWT7ROl7+KLDX/5UbJSMoxFzzGuxL6toErsdYK5TkmF8EBasCDuMPz
         YluSXDBTQnSmVHEceTm3PegtED0c7J2a8ST9OjtoM4+wY7K6H/RKH3Be8j8UHzS8ByWo
         VtsI6jAQ3Mw/i9gCMUXpDYQkLse02GkN8gJd9Kkk6RzvV/Jbb/gyCgHsd9ahRHpnYj3g
         N5ZZWTfpWrGx8qEaTmgFva5Wn+cpiIb3fUUAS3jom2iZTwVleXYKgYjRprS4KX8YFXsf
         Ouyj8GZFxBUROkBkmHTaQVmqWXRWEs0srMNCHj5mFnDm46A4yMgM5DG/nIKHowDukKAK
         OP9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=H1XMeYeHsgHW36t3vA+eJZQkBgWcdFbu4QBPSCRaoJ8=;
        b=s9q9HPaBLnr1lTigmj4oaoGExxBUtjDrCS4zUj53jvCJJmJ7rY8RsAGHnpjOFuLAtt
         I0lWUarQ4rsBQvP855PIUIIs8tLM+KwxWloZHOf0ZLBnfibz8KFraR0eR09DsUzWMmav
         B7ZhGxsSr4NLdQbMS5RjvhJx+5UtnkI14mCbckkXAyqM20dB2oDmD7zQ5wKthfpwyv+W
         K4XBR8adAhd0HtVH52P9fodAWVGCUo4t3BRzyX+dlz/4Eb+oimBk1TpOF0xIu6yr251c
         fLnplBlWZIVJ1w0IPC3lRhwvTIrdOkpLMyKkbouMayn1+0MxgOSBzG1qRh8+HpvfPwy1
         u/vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H1XMeYeHsgHW36t3vA+eJZQkBgWcdFbu4QBPSCRaoJ8=;
        b=XYXEK39S/12t2MXPOiPFqVzS3Ne1EEHet/3W4mBpf59EAFVY6AzFjsUeSDR4M3RhQl
         8dtFZ0bfgLuAIcsjIMHTrgFEYM59Zsl38jcg/jx7pavxzH2UwwIIqCJz2X6hqHdiSkNF
         rG+5NyyVhrbuQ+Y5ocRQ45Fqj9gCIIvZrjAe7mfQb982cNzwKygsyQtihy1MmMBLGcW8
         VgRJO5qCudZdnkTU+Szw2z0MXRoQrwFEXJBLLGnFnWwO6xUUQVssFK0uhqsg48Qzh6yW
         zXAYiutYwMCQmIQ0R7X5Z40ObzE+tC/VZthlSBqQH9OvTTr73Y6ZtYsVFKjLGbZA+N/r
         wUXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H1XMeYeHsgHW36t3vA+eJZQkBgWcdFbu4QBPSCRaoJ8=;
        b=ZKni5h1aDUbuYN4HWAfH+cNqQ4rdt8fcxpvVhTM6R5Vj7KT+OetutfdCmo1hdkLlRV
         MWmi/E/8jvnKnMOPGojZP21nj3ckGXATRQDIXvN8RFMG5M/LgwTcLI7NXH9HwKyIMmgP
         v+JMFEvhKwovnfn8TRWxnP0GOcgE9FaRJZwkXdERDfkaWE9PlsjsX7VXfFi30HcCosZY
         KgfFvqiAco7GmjJEI40IqJCiy2PmLoQfLKufptf2vdHIBMRau6cjRwSDuI+BwFRA0bR0
         d3v3uzSzWg3TWUaVp6o6kTtoUNi1m3DJocdm2Sgigz29dl+lO1VhWLwLxnAA6tW9SuhQ
         RDgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OvsocZuLybAEpY6lq2Z+xY1/hqxwO++gDQcffB5FoZzwieVz+
	Q0QfsaClKyRhZ5vEFv42mX4=
X-Google-Smtp-Source: ABdhPJycbDQuGlWxrnU1HeHXNPhnhueCp3zfOvP+thVkx6IqhRcUP6rsu51xsOakIuFLVm5BVp4GyQ==
X-Received: by 2002:a2e:9f57:: with SMTP id v23mr10465977ljk.498.1619973948794;
        Sun, 02 May 2021 09:45:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls2868343ljf.8.gmail; Sun, 02 May
 2021 09:45:47 -0700 (PDT)
X-Received: by 2002:a2e:b055:: with SMTP id d21mr10655413ljl.27.1619973947804;
        Sun, 02 May 2021 09:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619973947; cv=none;
        d=google.com; s=arc-20160816;
        b=KAS8tPXhrIj8h2/QLbGaU1S1dnUReJAflhoVpAPg+fKnqZ74pdKe/sppy/BTs4/zpF
         m336TpE5ZdD0/WpggmhxL7to5sVMZcYFJCMvgggILGV03ofd+Zqm/UOJe8iySId/EO5Y
         EjKXywKu6SRC4nE9kIxYBR6dMGyZf8/zUIdN+5vpriENxOj8a+vZ47VNNgn1+4eDW47U
         Y0HekBCAARVxfUU0g7Yw7vWVH09gw3p8T51fNswwu8GqoMh4FwYmx4EXzF562lSYFzq/
         JcswgWmkwUnthTdkUbw6Z0XQ2cIdkXDQYFlazmQ+M+pnkj+1wVzBaBLogjeBBZaekwWF
         LOkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eBmAHVwBlubCK/IWXV8jaxiE7XMx9Ker9OITRRlSiSc=;
        b=kCWKW5ibqh5GYNixOnYm6npYmXXq28X4XjBB1qkje8bpurm6tCjbQ8w4H3eSjQt8eJ
         Y2rpVwrk+QcN2TOlY8FmLZvD6jdUJ7bYB64uspM3hgsxWH401+dCOOUUr3AbmVTmoXwH
         o6t94DFOuK7zBH2wAcPVD9xuQ5Fpm50e67ZPA0GW1OvuG1L3NDyJFQPN7PyYGApBoi8D
         2xMGGC+Pu9f41j+P7YQvB6mPjjTNIbNI/Lb+Egif/Vb4KrRVJEukcRmtLbcJueTomxSz
         2VI9PDH2bYkK5CqFqUti2dw0J4XaCg1Ckm3XK2idVXsf0jD3npkC4hP6RYs8S3GITqVk
         7bIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [2001:4ca0:200:3:200:5efe:8d54:4505])
        by gmr-mx.google.com with ESMTPS id b2si664813ljf.0.2021.05.02.09.45.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 09:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) client-ip=2001:4ca0:200:3:200:5efe:8d54:4505;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4FYBn53n2Nz4c;
	Sun,  2 May 2021 18:45:45 +0200 (CEST)
Date: Sun, 2 May 2021 19:45:42 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Tom Stellard <tstellar@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210502164542.GA4522@localhost>
References: <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost>
 <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates
 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, May 02, 2021 at 09:12:37AM -0700, Linus Torvalds wrote:
> On Sun, May 2, 2021 at 2:31 AM Adrian Bunk <bunk@kernel.org> wrote:
> >
> > The biggest advantage of shared libraries is that they enable
> > distributions to provide security fixes.
> 
> Adrian - you're ignoring the real argument, to the point that the
> above is basically a lie.
> 
> The argument was never that things like libc or the core GUI libraries
> shouldn't be shared.
> 
> The argument was that the "one-off" libraries shouldn't be shared.
> 
> Things very much like libLLVM.so.
>...

Mesa and PostgreSQL are among the packages that do use libLLVM.so,
this is a popular library for implementing compilers and JITs.

>             Linus

cu
Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210502164542.GA4522%40localhost.
