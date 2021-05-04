Return-Path: <clang-built-linux+bncBDXOTIER6UBBBPNGY6CAMGQEJW46L3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2A13732A1
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 01:05:34 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id z12-20020a05620a08ccb02902ea1e4a963dsf2124150qkz.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 16:05:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620169534; cv=pass;
        d=google.com; s=arc-20160816;
        b=E6wx+Gb+HC3cZo7ROTxOZTO9L/BoR7/Kpk3vKtIFu6PfyqJWliIyBHkKGd+fZIgSMM
         lunBVJdbJMs3OHfCzZt3rmw6GvGG2AFgqxFI3ZpVIbyH3xkYBOO1xDHbj74gBGQbjN92
         BsPr1KDFNw0xN3tAv5C+M2mxtEi8wWPHAfAYRRIW2LOzL8sXImMVPG++NrVAtWlU3ZJH
         0Ri33rx+ko+PajyfNjT75Alr2doMsxOha+/XWGsUDOa0F1QPVqHQACg7QozKYd9JNp2q
         NFeNWs8Ko5Lf0pRz/0afQ+i7r7JaNCUFWio4V5Pg4B6znAVXIstJEemhKbvEEjwJHMYr
         SpTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=HxVXIaDj5CyEcVVt1xAo+YdwfTqhnSEzo8zLDB2oT6o=;
        b=gWhss0csXWF9iIOUNA2ai6gtUyZt181CzqX0LIiUBGSh2LeE1B/WScTcre7XqfgEhl
         GjlRugLT9F5STFkdG2W2f0XWPB5/bb3Z6G6nX8nOiDD3Xm8I+bi0E59fvt3C1mML1A1w
         nOkLRuy5X9IjlybNYuHhvKDaqKIiAnL7EM4/ZFwxd3Go5ZaTi0lLUtQMu14+qRG/cZp4
         Ys/mdPgrOX3PvlwTPW+kvdEmUq0UYJsUNcLCfgLQYEcIBS93Luour7Jc8zOr/QWYN5RQ
         l9EHsJLAktPCsF2uI9TKOe5socVS2aAPghznBTExF32OV+u7W1VsqNzq4AUVjHZ6+aIq
         z1Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gsstark@gmail.com designates 209.85.219.181 as permitted sender) smtp.mailfrom=gsstark@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HxVXIaDj5CyEcVVt1xAo+YdwfTqhnSEzo8zLDB2oT6o=;
        b=PEOwcOwjzPRGgQaj4KjfX93a1ULGn3FXD+vERUBtS2vpoSW1miehAGQyU6ge9dntAC
         JSO33kZAKliTNF1ekohGuJl0Qyxb9FpdC3CdzM6aUlH4BKGVwH2A1uRp6PknrbdRw2pa
         iOL020nWPEMVYgkVNTSFRjcYMyWNjY45C9Oy8LIKcR8696dgIu3hL7Sk0A+zO7k1qat/
         FJPpoihgfiq7402eTD5ubhvEZa8SS4Hl9MUoqyvF5FPOpAj32xb6lkI1DZ3yEMRjLt2S
         qKSi8qryGZ+nl7aDi/QiTaSvmty59oj0KPmCp0gihY+nNCRr4s15FPr6hSgwWqM04/th
         r1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HxVXIaDj5CyEcVVt1xAo+YdwfTqhnSEzo8zLDB2oT6o=;
        b=Dmb7bZAYzp6dS/gyzKg0qhawix4JEYNENTfeV0jQYLIhm+dllSwc+uk5CRUnFVejDL
         9Eg/lcxE5mqxwahJvbQV7haz+m6m6+psldUW8q9Ex9EZZZvaP1+XY4tG2qKRWlCShPk1
         7URH8nnl3lMy2GvoNkJ5GC7s3v+sZxO8LrHBbEoifSCYLbhkTd1xmG2U9o1bGvlMruGb
         CaARLvOXRvU0Q5dXjvKQ/KVzvMM7i4KTfbB+XE/CdGHwe/DVj4p908e41zZHeDM8n9rL
         HaW7kQbT1rd2SxDBkEpHRReUBIPGuX5IbV/Lt3ThbGfh67Lan9A8SpDSXOP2HnTF+xZC
         AK/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530D9BUP5E4AqeTt3iiknQA9wMkHT6130u+pEUNOq/hOaGr/D1Ob
	Brnt1CvFOW00YmEcmEupWqk=
X-Google-Smtp-Source: ABdhPJyqrPPgGVbyhjHHKBjtARYXRcQktXfz8ZaDUE4dylD0FHwBQA+oS3pO1SVkHbuggP5aejTb9Q==
X-Received: by 2002:ae9:edcd:: with SMTP id c196mr1032405qkg.441.1620169533944;
        Tue, 04 May 2021 16:05:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7684:: with SMTP id g4ls1353975qtr.9.gmail; Tue, 04 May
 2021 16:05:33 -0700 (PDT)
X-Received: by 2002:ac8:5906:: with SMTP id 6mr25467263qty.195.1620169533543;
        Tue, 04 May 2021 16:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620169533; cv=none;
        d=google.com; s=arc-20160816;
        b=RL9AyT0TcYfE40Z7Pqvg9YFWa63FWz/7X6GSt4uaR1M/T+9/1UhCIzVLiBw7miROiQ
         fVp7Dyi/OCrJahHnYt7kkpQ9msQwjL/llA9yYT9UxmaFmvP0iHjxCt3F0YbjpTMGSp7J
         xERUvDTu5HRFwqwG/h1o3QE5ddrFkqxEiBzEC592aOAR/Lk2Y5l28nJrQEA0VLFzEISq
         vzJJwNYIX+Ennc/2JaNJ/zTgUI1NIVSeoqS7b484FoF1Vys2UWs3wydZ/MFmFB4dGbN1
         XYVgpKhki6WVCn+/6/c4LE7+/WPswsjyslR9O5+kMgN21AXyPPs+hvSh8Yvu6utLTxBv
         9rWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=PvfEJxx8T5Gfb4a+lHvIlRpfFqDd/U5kxfg9D9O09eY=;
        b=E+HwgBdVRm4dalcAYCAfLC47k1yMn/TX6pY6wgYouUa1NpaQeRYL8L0Iw72jGbvsrS
         NAFENZ+8p+jMztjiCQmZtPI9xNZaQTWQcxk/yDwwlfX0bjHOrGQTuBoFnUPFgfqY+uVh
         RDR5zd7SJIaLn3r+A0qH6AE18unqh/OsUGwW/VJFUr8zxtn2QjySz7AfgnHrnSitCexQ
         BFjspleZgVoqM1DWEEDpN3GBOabMsP+0RqYJfr2ZeQD0XCvZTAFMURP/Pb6SNYn5Vfrh
         9/0UtSjymKlYSokB8Hz3qaz02Z5YJhx1l5tJz5ur7xWUM/TFaQ2+h3n8oHgSxa2ElSp6
         Odlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gsstark@gmail.com designates 209.85.219.181 as permitted sender) smtp.mailfrom=gsstark@gmail.com
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by gmr-mx.google.com with ESMTPS id h62si386139qkc.3.2021.05.04.16.05.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 16:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gsstark@gmail.com designates 209.85.219.181 as permitted sender) client-ip=209.85.219.181;
Received: by mail-yb1-f181.google.com with SMTP id l7so217780ybf.8
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 16:05:33 -0700 (PDT)
X-Received: by 2002:a25:bc08:: with SMTP id i8mr36987237ybh.146.1620169533255;
 Tue, 04 May 2021 16:05:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk> <YJAK1C1uLknYGYrH@mit.edu>
In-Reply-To: <YJAK1C1uLknYGYrH@mit.edu>
From: Greg Stark <stark@mit.edu>
Date: Tue, 4 May 2021 19:04:56 -0400
Message-ID: <CAM-w4HOJqDUyK9HXjtqD3K2ja1Wt=u2s5waQ1wqm7jHy0P5V-A@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: "Maciej W. Rozycki" <macro@orcam.me.uk>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: stark@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gsstark@gmail.com designates 209.85.219.181 as
 permitted sender) smtp.mailfrom=gsstark@gmail.com
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

On Mon, 3 May 2021 at 10:39, Theodore Ts'o <tytso@mit.edu> wrote:
>
> That was because memory was *incredibly* restrictive in those days.
> My first Linux server had one gig of memory, and so shared libraries
> provided a huge performance boost --- because otherwise systems would
> be swapping or paging their brains out.

(I assume you mean 1 megabyte?)
I have 16G and the way modern programs are written I'm still having
trouble avoiding swap thrashing...

This is always a foolish argument though. Regardless of the amount of
resources available we always want to use it as efficiently as
possible. The question is not whether we have more memory today than
before, but whether the time and power saved in reducing memory usage
(and memory bandwidth usage) is more or less than other resource costs
being traded off and whether that balance has changed.

> However, these days, many if not most developers aren't capable of the
> discpline needed to maintained the ABI stability needed for shared
> libraries to work well.

I would argue you have cause and effect reversed here. The reason
developers don't understand ABI (or even API) compatibility is
*because* they're used to people just static linking (or vendoring).
If people pushed back the world would be a better place.

-- 
greg

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAM-w4HOJqDUyK9HXjtqD3K2ja1Wt%3Du2s5waQ1wqm7jHy0P5V-A%40mail.gmail.com.
