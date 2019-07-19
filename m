Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBCE7ZDUQKGQECZL2PEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D07B6EAC8
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 20:44:25 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id f28sf28528793qtg.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 11:44:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563561864; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8/C+dVPNwOHe1vXLSJpUuYTcdMlfaI8w7q66tlWt1KMV5U/aRj1NoOaClqvV5RjU+
         MpRDeLKzztXyk6r/Muj+GOtPhAXiP3MfrCfa8fVgFRZREFBqmMfpEGNMxddt2kq90OAu
         qXm61ZtIbQxfgIf5TD/55B7gaKl8yUyvI+vPDV6mMnmyELooWYO6efADoDrwcy61upNd
         gO7ELuMWX+6/N+3LE1c3bBac8rtBIZefF6PmTCRto2UGQshmCBPsnzBXluGDJhkiuuH3
         jaoXffb15frqfjS47XMK3CBhg6Qfzg7pNv7dXUy1bvUNe1fHAsvW94ZAXCcvsz3g5jxi
         Zg0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=dPZeUoQRa6mGIpXnYdfgY4wJWaC+ylQ/L/gvft0CkCs=;
        b=Zw/e67oj2UEzQJFsTfjmfn5xG0JyhPWCkte1XmZij7qUsWDPUiVTa2AU1jeQkMuxgn
         KRVkDcPIWT1wPwHualE1g0voObFaXXEetwztq1x/xnvDk1W4MvuK+vMitkiO3mHutuOB
         P9Eld26Vmsj1cEertoelBa2M8xhe+zstZvgrn6miSicgD+TKBDJs0dFhXxhoCi5duTgb
         /t9UHPQWLlRYX4REMfTzIJ2VyXBpcTgJ1PkraysoxjU1rlnYiCYKKF0iY/x+sc1tB4Wj
         HQZhktJ2X9K+5Hlv9r2mcGO6Xxi1WyKaO2t36Q7xwkEL1mJ969xbqW4dGQmdR7rMzZYN
         jQ5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dPZeUoQRa6mGIpXnYdfgY4wJWaC+ylQ/L/gvft0CkCs=;
        b=SSCVZpWXV7uzynwKyJBhgU8hoWBr/WUMlgv5pRb8u7NZaZ89hBFBM7JVu9Lyzq6cmg
         uoKNTTo18Fd6VBSai8MxjcY/EHKen/PmqWAGpmiknc6CFDW1g1NoViLk5A8XJfrGwrEc
         Y2lr7w4VaKn7beuontoAcoiGDocHG+Q4Q3s2D61m2ogm+RQM4x8sY5xQLE4nHVQq0lPE
         CY6ocbQUZfJBTEI23/BJz+p/it/OCsGF1g6F3YAGJzGl0rcNt3huLiErqeeFeEP9WYQk
         a+ajJDvMCnlmRcDVBepG7yTX0cEI9gvsvUGqhRf5iwVGemwIoBJ2QBQntkkJVt5BgBg6
         +rTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dPZeUoQRa6mGIpXnYdfgY4wJWaC+ylQ/L/gvft0CkCs=;
        b=tdqRCH6owkNACEEeXF9R59YVB08fpTTxIWksFN8X45gNEWbZIbwUWxkhRhHj6j9x0u
         svDmYnqidmxyztzfUW/2fUBGmuY+P+tGq8qzcdrOh7tGECou7b1go886t55FdzXxXCyE
         y1JXzcoGtJVdx112jW7agKJEhL10F0Nm9YUZBQGhpzl8Gi6RopO1JkDUVpluI1m2ZX0a
         /IFDo2EX6iULlsJVA6mf/c7LQz7JqP5hxUVNXChLociVvoLnIv5xcA+l+J31jth3b0oZ
         D/VcYkNegP6x+JOyeTB37l+YBRr7v6Fj9sk8I6zU9ibjvMjX4RJc23SH4givK0Qiykft
         ms6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWg9r0M7f7d1JZKnkEwxQks+HWbZ98ddcUOTJpUm4bZezszif5X
	KhHdeMBvHR8WSa9UI4lQdI8=
X-Google-Smtp-Source: APXvYqyvGbbWNYpZgchtygxJa93233qLSeoXmNtVYkfjCH2hpUtnGrDCAMAxZq5p5imboPDf4AtqRg==
X-Received: by 2002:a0c:b010:: with SMTP id k16mr39810632qvc.170.1563561864320;
        Fri, 19 Jul 2019 11:44:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:718b:: with SMTP id w11ls8311816qto.1.gmail; Fri, 19 Jul
 2019 11:44:23 -0700 (PDT)
X-Received: by 2002:ac8:7552:: with SMTP id b18mr38474441qtr.235.1563561863903;
        Fri, 19 Jul 2019 11:44:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563561863; cv=none;
        d=google.com; s=arc-20160816;
        b=NUhOhjgKNNoczLJpC3h30ztFiuZxmNMdqi1IlFlf6fcQE960l8DrG9e4hTaTYbu5Ib
         PcdqkcL7caFkzb9WUeadTyMJ6lUZplfyFvPE+Y7xnaV0S2/e5BuNep3N7aZTOMdeSm4T
         T68PrTLffqVkvr2RgH1NXGwr3Z5v6WUC4zgJhyAl79+fQbybuTybJL2u2ey11p2O7W3r
         dRUsT05X96VlRZ93o2FTttuh4cs0UYJlwv2Ac29eNpD2BVO5dJ2ddwXq1pArj079bghu
         FHOI6DeoKOgirATcLxSVQJ7YTcBedDsTVgbUk0vM/UJFXxi5UpuXJc4TLJuENJXqbtif
         Vo/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=nHHzqxevJlSZnlD75KoRCbvBygaRoQg8WzppZetoq+Q=;
        b=PKX33G7sanjsse4PpuaUVVn/UQq67/+zYWnh1wnCWoW0aQAHWSpjFN2gXPsjtw3isH
         uGfDIPqGIwFNBmbipHgLrTG4xEwqkqyyWBUxdYb8zgHYM98v3be7C5v5aOVr0nwgc0+H
         mRRhwxyuuup6iOb9QXkTXskfphee6r7wlSbp7go09s6peFALDQXkDwFM2o8++3ObLdB/
         JQIHu273UME3qsAZVjQrBvKsKdCQ+kvNVuoSrdzAX94VynjXYmQOfF2mZthEM0HrwCj8
         Yz5dS1j7td0zbn/K7tV+Ar/PFOrUSTLc7ShOw8HMNMb0bnIZ2yBrm1jWKBTZ9CrphpKs
         D6zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id m23si2092602qtc.0.2019.07.19.11.44.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 11:44:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id r6so23990172qkc.0
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 11:44:23 -0700 (PDT)
X-Received: by 2002:a37:5f45:: with SMTP id t66mr36666944qkb.286.1563561863542;
 Fri, 19 Jul 2019 11:44:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
 <CAKwvOdmoD1wVFLdWRXTA=c-p4oc6HDxsfhXq5wQpD-8oFUfNNQ@mail.gmail.com> <20190719183125.2tuhcch2rtanxvyn@treble>
In-Reply-To: <20190719183125.2tuhcch2rtanxvyn@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Jul 2019 20:44:07 +0200
Message-ID: <CAK8P3a1hxEAnuqt=ajUf4ETCOY9ckEEVZVrG1c+SV=bn2_Ga-Q@mail.gmail.com>
Subject: Re: warning: objtool: fn1 uses BP as a scratch register
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Jul 19, 2019 at 8:31 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Jul 19, 2019 at 11:23:16AM -0700, Nick Desaulniers wrote:
> > On Fri, Jul 19, 2019 at 11:10 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > A lot of objtool fixes showed up in linux-next, so I looked at some
> > > remaining ones.
> > > This one comes a lot up in some configurations
> > >
> > > https://godbolt.org/z/ZZLVD-
> > >
> > > struct ov7670_win_size {
> > >   int width;
> > >   int height;
> > > };
> > > struct ov7670_devtype {
> > >   struct ov7670_win_size *win_sizes;
> > >   unsigned n_win_sizes;
> > > };
> > > struct ov7670_info {
> > >   int min_width;
> > >   int min_height;
> > >   struct ov7670_devtype devtype;
> > > } a;
> > > int b;
> > > int fn1() {
> > >   struct ov7670_info c = a;
> > >   int i = 0;
> > >   for (; i < c.devtype.n_win_sizes; i++) {
> > >     struct ov7670_win_size d = c.devtype.win_sizes[i];
> > >     if (c.min_width && d.width < d.height < c.min_height)
> > >       if (b)
> > >         return 0;
> > >   }
> > >   return 2;
> > > }
> > >
> > > $ clang-8 -O2 -fno-omit-frame-pointer -fno-strict-overflow -c ov7670.i
> > > $ objtool check  --no-unreachable --uaccess ov7670.o
> > > ov7670.o: warning: objtool: fn1 uses BP as a scratch register
> >
> > Thanks for the report and reduced test case.  From the godbolt link, I
> > don't see %rbp, %ebp, %bp, or %bpl being referenced (other that %rbp
> > in the typical epilogue).  Am I missing something? Is objtool maybe
> > not reporting the precise function at fault?
>
> I haven't looked, but it could very well be an objtool bug (surprise).

Actually the reproducer may be wrong. I reduced the test case using
9.0.0-svn363902-1~exp1+0~20190620001509.2315~1.gbp76e756,
and this contains a link

         testl %ebp, %ebp

I get the same thing with clang-8, but godbolt.org shows it only
with clang-8 (see https://godbolt.org/z/g1lZO0) , not with trunk.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1hxEAnuqt%3DajUf4ETCOY9ckEEVZVrG1c%2BSV%3Dbn2_Ga-Q%40mail.gmail.com.
