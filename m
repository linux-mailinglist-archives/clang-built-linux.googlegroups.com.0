Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4FBZDUQKGQEXWNFIIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C44C6EADA
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 20:50:26 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id f11sf17585760otq.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 11:50:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563562225; cv=pass;
        d=google.com; s=arc-20160816;
        b=agDLHOQC0xhBsOb+H6ho8vjf2rQqptV4g7QtU07HoMey/3izoP9wfoOtDsgIVeeo1G
         7E8yp4PhUf6PppFUglkSvADDfBJXqvdqhkwT8LnHC5uKPC4iQYwkGNRo649o0fFeB8f1
         DQMIhWw8rmzvfySnVv8lG9KAU9dvVOlJFI8Cg0CPIBQ7tda+YlV59ZZAa3cG+TdG40wB
         zWM17Tx+ZZ3LJJRVFRpX9peOPB6nl4KvIkuiqBnaqbmR1fSKTC0R56xezvUJJEXGwICS
         M9Zf0tJIZa7HFqH8V0YyF0Xkw/Jzg+U4feKjSl+9ld76Yifls8BlhFNIvdsThbj2jjba
         IkqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zheEIMLpWb2CMaP8BA1T3PUgSxaD2jjqyQaNX9qHRVg=;
        b=WMfRA9P1Et1dT2Fn2kb6t3c3KA0u4aM8QeXe/tx2DnXLZc6Mtc44RzilnIqu8Kxp5j
         SUdtE33Ywf0wUGew/V8N8jPQFjxDAVst36MHIz298M90H860F5ZBqEhNNO6ZyKE/J7Vi
         2EW8md2hzGNIn4cT1jBz3WjaABjDoE7JvHrfixmG4e3IPLARSGLNbzhCbbGFs5grs1yg
         dkJPm2nNNwrfgz3yjjkM/kkQEIOPWZ20YyGhGCyTto1Wo8zhR8GWB4MgMXzJzQYbqQfD
         XWrJr7h1XwUBvhhv9hvb/fne1eCMzeoOMk2h5cytXIAxNW+OaXQ7aM1uVmfqPE4bgpiq
         +VFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NwQnaJJq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zheEIMLpWb2CMaP8BA1T3PUgSxaD2jjqyQaNX9qHRVg=;
        b=gjbFkDlaxB0vJJLi4/PpyYwis0MjOME3DFzx/73ZxlhYTaJXYDjC2gv2PFSKhL+1FW
         94UDcW8nmF7XhzY9mKsnAIm0KSOzBqK/mH0TfCGQyrGGynJKC+Ng3AX5FYgVvhbwqmsX
         FfP3XspiMUOm4OhibMkPp+y3NJJsDmytMgRyDYg6YYaADghvuV3Jo9Crm23/yi0WRCJO
         IXbp+aMn7hg+eOtd8MSgt5d5hwz6fNMqU78u/YfHA0Y3RxiBUfZBx8t5i6CTSQi21fzz
         4EC/itxPTxVLzs06hsjlsXwDSss2zEYClosd1cia6t6mdXTLfQJoJ45Tpi4b93Xa+bmA
         YNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zheEIMLpWb2CMaP8BA1T3PUgSxaD2jjqyQaNX9qHRVg=;
        b=CXlFiFA3EEzJ0cGkCn4xo5P+4ap+xHNwaZlXDHuSiv9XNuNWbz/mIoNx0xrQMw87gI
         k54QQVydhr5jokTv7I4SZ+VeSPRNPbzyUbauB5PLgOIcdR+daYNqpbiajgXhfHFHNFPT
         ELmacUIGZjAIpX+Szu9AUUiJCThHs4NQGZv8aLbcfQH9eKI0ROCGSY0HHNTdhH6HRjn5
         OCeXD9emZA5uLmpRb3fTyJnuTwgBzWXU/fUE61t8SIrG+wS5ML9Ly3Mm1Et3hwU4Laul
         U59Z8FWtRsmGDEu6SDdK1ppim3BoKP0moN6Q3ZDBV/G+sA+Aex3u9uAyb4A2qmJW293V
         g4DQ==
X-Gm-Message-State: APjAAAU/sL5O+mpNO21+P3NsSLZi/tk8E25cYQFNdiWDVMKISzyqsAgg
	8sDbgHsPSsYs3fBfYia/oog=
X-Google-Smtp-Source: APXvYqx4XCWzonRnraCiYUB7neItiu83cC84l8fR2h11fzIvm8bxkDkCBOLwOD55tb+6O8imp9B3IQ==
X-Received: by 2002:a05:6808:144:: with SMTP id h4mr24294380oie.20.1563562224954;
        Fri, 19 Jul 2019 11:50:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2489:: with SMTP id z9ls6197989ota.9.gmail; Fri, 19 Jul
 2019 11:50:24 -0700 (PDT)
X-Received: by 2002:a9d:17e6:: with SMTP id j93mr15082873otj.275.1563562224688;
        Fri, 19 Jul 2019 11:50:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563562224; cv=none;
        d=google.com; s=arc-20160816;
        b=R6NBsN9gsYT51FqmlTB9JEx50EISx/GedPUVlTMQcNq7AIP5TAFKe3xYqn6/soB+Gl
         SQejMN1mdqdjH9XQon+p6CE9c9aI16fmNzTOAlnByUEpX1Km8j3teOE04wNYHpk7Pdb3
         Lg57vIb4KYEmHY774caMD/C1BfDiAes4Dju4650HIYNTVn/9p3jOYKO7PAaz3f79oaXR
         PoQz92F3I2dBNYEo6fH5pjTm5mTez1m7crHY8Ughdv3sq485IqTuVI/4I6GHflH9/mx6
         w6PzbUZZSjkJ3Q5PzTBQxudKBGTp/OlpAaZc3ZFSPPv1adWLER+ZdPK/8DjTeOk1K4RH
         gFFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VtwstdfuOaP3ic+p5sbmiS56sJs1k20ZJhy+jU3nX1A=;
        b=afI3dCXd5CDBEz8/hAZp8US5g0qn9psuxhjEJ8LNFNTkWPACQ2lFZbhSUpthcKLjgL
         LDEPZTbyhgQglwZktPxVEyMpTxjgKLUlgFFzhkJjfR+byqHoh09jM2f/VCV6fLtLrr8p
         fENrxWQAPAEO1GoCA/NcYALZ8C9yx2WSFkEqAN45DerKbya1NOrvjRyqd6MqPpsByRZz
         SpOnM14KtuIzmx0+Kf3fxSLJWUNFTgfZMjvLEmITPixMjDM9Xkx4NYzmdE78Nhkxbu0M
         j96GPS64E3Ibfhdd+xiyo3bqAsZ/BmCZjt8WF1mwDg8XJTgJOPrd8hwUik10uoq23IjL
         37og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NwQnaJJq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id p6si1558850otk.5.2019.07.19.11.50.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 11:50:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id t14so16009526plr.11
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 11:50:24 -0700 (PDT)
X-Received: by 2002:a17:902:4aa3:: with SMTP id x32mr56112960pld.119.1563562223586;
 Fri, 19 Jul 2019 11:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
 <CAKwvOdmoD1wVFLdWRXTA=c-p4oc6HDxsfhXq5wQpD-8oFUfNNQ@mail.gmail.com>
 <20190719183125.2tuhcch2rtanxvyn@treble> <CAK8P3a1hxEAnuqt=ajUf4ETCOY9ckEEVZVrG1c+SV=bn2_Ga-Q@mail.gmail.com>
In-Reply-To: <CAK8P3a1hxEAnuqt=ajUf4ETCOY9ckEEVZVrG1c+SV=bn2_Ga-Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Jul 2019 11:50:12 -0700
Message-ID: <CAKwvOd=jc06YyF2YsAfHWCR9qtB8oOeR5oQMpJe69TTfG3s2RA@mail.gmail.com>
Subject: Re: warning: objtool: fn1 uses BP as a scratch register
To: Arnd Bergmann <arnd@arndb.de>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Craig Topper <craig.topper@intel.com>, Simon Pilgrim <llvm-dev@redking.me.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NwQnaJJq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629
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

On Fri, Jul 19, 2019 at 11:44 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Jul 19, 2019 at 8:31 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Fri, Jul 19, 2019 at 11:23:16AM -0700, Nick Desaulniers wrote:
> > > On Fri, Jul 19, 2019 at 11:10 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > A lot of objtool fixes showed up in linux-next, so I looked at some
> > > > remaining ones.
> > > > This one comes a lot up in some configurations
> > > >
> > > > https://godbolt.org/z/ZZLVD-
> > > >
> > > > struct ov7670_win_size {
> > > >   int width;
> > > >   int height;
> > > > };
> > > > struct ov7670_devtype {
> > > >   struct ov7670_win_size *win_sizes;
> > > >   unsigned n_win_sizes;
> > > > };
> > > > struct ov7670_info {
> > > >   int min_width;
> > > >   int min_height;
> > > >   struct ov7670_devtype devtype;
> > > > } a;
> > > > int b;
> > > > int fn1() {
> > > >   struct ov7670_info c = a;
> > > >   int i = 0;
> > > >   for (; i < c.devtype.n_win_sizes; i++) {
> > > >     struct ov7670_win_size d = c.devtype.win_sizes[i];
> > > >     if (c.min_width && d.width < d.height < c.min_height)
> > > >       if (b)
> > > >         return 0;
> > > >   }
> > > >   return 2;
> > > > }
> > > >
> > > > $ clang-8 -O2 -fno-omit-frame-pointer -fno-strict-overflow -c ov7670.i
> > > > $ objtool check  --no-unreachable --uaccess ov7670.o
> > > > ov7670.o: warning: objtool: fn1 uses BP as a scratch register
> > >
> > > Thanks for the report and reduced test case.  From the godbolt link, I
> > > don't see %rbp, %ebp, %bp, or %bpl being referenced (other that %rbp
> > > in the typical epilogue).  Am I missing something? Is objtool maybe
> > > not reporting the precise function at fault?
> >
> > I haven't looked, but it could very well be an objtool bug (surprise).
>
> Actually the reproducer may be wrong. I reduced the test case using
> 9.0.0-svn363902-1~exp1+0~20190620001509.2315~1.gbp76e756,
> and this contains a link
>
>          testl %ebp, %ebp
>
> I get the same thing with clang-8, but godbolt.org shows it only
> with clang-8 (see https://godbolt.org/z/g1lZO0) , not with trunk.

(Sorry for sending a blank email just now)
+ Craig and Simon, in case they recall this being a recent fix in
LLVM's x86 backend.
Sounds like this is fixing in upstream LLVM.  Guessing this could
result in improper unwinding w/ clang-8, but that's kind of irrelevant
for x86 as there's no asm goto (though we don't need CONFIG_JUMP_LABEL
in LTS branches :P)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Djc06YyF2YsAfHWCR9qtB8oOeR5oQMpJe69TTfG3s2RA%40mail.gmail.com.
