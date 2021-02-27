Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7W746AQMGQEP6WTZXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA9B326C0F
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 08:08:47 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id f7sf7447105pgp.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 23:08:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614409726; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZZ3R7ppwNcYGeCW59RbPEEEYa6/tU5EfEEsIAkc+xbOj3HuZuvJfYLrcR5HAXwAHV
         PKvmtMQU6gOa+xynelhnHnf7zQaWYV1M1vdN9RsvHVN06L3BDL0msSAjlbdt5LrS889J
         LQuqQOmakxR77F9MmjqGokoo/CuK0gTwHPu/hUggv0BWkSOc3017jg7txBH6opPh4pIT
         mn3JJPoj92YtaOHku2yPN4KJv1b1XemcH8vPsKLeM4dD9QYZmffU2zak1dz1dmWWdqKm
         N4aPWt7dj0OsRKt20swQoDtjxaiRBu3TdgXhENNhbxOyirv8ZgmLClTddJz6Q61uuGan
         /aog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Zs4ycumcuh3whc1N/1sgZIu2cU15e/HtS8PuEBCN0yY=;
        b=AlyKNSoa5Ws02PR+r7z1BfryciIOKQWhvTyjeGFIo0RCMumBcqE+RlqAj/r7oqfJTt
         DHCAYQWR/zNYllMe8IfanbyYCAuVvu3rq1GBS+XRP4MdtZUFg7exbGA+QaK58UpxiA0A
         hMXJhRLL2/aYvuoZBY7XKUB51dMJsdrLK1BWv5BY5h7fNI5b5cukxzCllbZrbdLSt8UC
         JL8EaYsazSHFdn7t6qUPLjPoJvGU/mezvOQ47kq0gIFiu9S9VWzHOX2e9U/Z5CHIJKR5
         ZL2MGePIpMUxmR/s7WquWzesLjymsbUezdF1ubgHZFxMu8ktwZIQE1ThQTiFfg7ZGSCl
         88CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q4Htg/c6";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zs4ycumcuh3whc1N/1sgZIu2cU15e/HtS8PuEBCN0yY=;
        b=jQWeovcS5MQahvxwOP/cQd8SJ8bwEcJDdui1AbiMpn0ty+0UAggwlw+s/LA/TJ0gDb
         KTtVFEnIMBp6WeUqaeuO6VmtReDVdcCd1oCMpDLSsiSZJLgz/e0K7J7MU3ipRVb1yAdh
         t5ED48yJqK16Me4QaZex05s3zy/CS4mcPzJ0OYXJ3ZqNJUIJ2RuqYtzWRNaFL7iRndaX
         dDvy+yK0xVPDnKQTSHakO4sKxUKc+f044pChEd8Wn7z2hbiWMDBhJddRiqVhqMZj790L
         QCB0wYNSODyvJZ4chK28F7x9xOLzCU1KPZTpETc+IDNjtMEk+QsUS34DrIWeGsKPh2kF
         iGKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zs4ycumcuh3whc1N/1sgZIu2cU15e/HtS8PuEBCN0yY=;
        b=FjubS+EgDcusryYDc+higqDgQ9gVvp8uxhxqsUx4tTtmPhISs16tb9Tr67R3npgdBw
         pCPwlDbomcIBnujuaj0fI9iiU2wcgvu4gekKeLcdrwkeOmdcyoN7xdLnqf67OysXgPLz
         my7BJlv87JoOnIYc4VdGETY4VHznvSLIVh6G1/wl7g0zu+uTf3eBA70DqyXE9CPzphGm
         NuAmzCoKhTjieNuwFhi+xbqiZZTF2brjGTugw7LPU1KPkN+7cOA5XzbJAG1rMyMfDFX6
         Er2CVT2AF/TPocaBjR01l0BXmH3UvrjB1uzz5/TEGiQ0/U480vZGEBM0LX0MgcXExPVs
         wFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zs4ycumcuh3whc1N/1sgZIu2cU15e/HtS8PuEBCN0yY=;
        b=jzoQKbDym7atK7z27X0cNpKgVYkIs7y6PjyYToAVHHrUfgAA9wdvj+Gl6cnO1I0qTr
         n7y+cDwZXwbIIg7YSawLJZ2LUqjz3s37slRwV2OHjIt/HjG/qBJFmiyV1hDbk3sWhVf2
         paienChG9Mn1bPAu074eVZFQyEoVHFJed1/TDxBT1j5uS+ZHpF6B/M3KM5dOLaoaQw8o
         e/FWMBWuNKg/JEH4/otkqPP/eS6mF+nJemqFx7Iwcemg56FV4bQz3s59zBzYodIcv0BG
         /451XO1ssq9YB4KcDaK+KbuzDoGWLJcAUQjBagScmH3bGXI/6G/issJL3BA141IsUsyR
         7Ofw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wh25GCWGaSk6SxVEeDJvK49vnTq7IzKNUWZTEWavsbTPof4cO
	Tf29nryTxOYt2kPlU7v7P7M=
X-Google-Smtp-Source: ABdhPJwAZKEKzszpsCL5DNkT6cJm4gh/9DDY4EkLFku1wtLnyHQ9pthvB1+XJTyvWCpjjkMN43PawQ==
X-Received: by 2002:a63:c44d:: with SMTP id m13mr6082872pgg.64.1614409726129;
        Fri, 26 Feb 2021 23:08:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b70a:: with SMTP id d10ls333465pls.3.gmail; Fri, 26
 Feb 2021 23:08:45 -0800 (PST)
X-Received: by 2002:a17:90a:db51:: with SMTP id u17mr7037975pjx.194.1614409725410;
        Fri, 26 Feb 2021 23:08:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614409725; cv=none;
        d=google.com; s=arc-20160816;
        b=jZOviQHErJfDjFBuwqCCsE2FTbYNwF+SXP3JdgNUvMz7ZfDK4D9XoAswP41nCIaDSb
         RO3qxAUbZXHkpvjU7p1h6j/pydsrHqJB5x1MRAbna0XKq+kpjoxiB8/k7SgzZPQwsIkw
         ZmxhrlJwYvp4sdEfur25D6UK7JaNXwWiYlt6Nq9AH/GkAccrIy9WPOndfli7maYzpShA
         saPwRhjPJm3UytHz9YG/Lv0+zbplrbdvj7TvyH6/isdlVsj5SSMgz1S6OdUZwW4pAmy3
         eRzEDViqY5HLZweHtTWbjKhowYoFGCyfw+JJOwdALD6d1M7ikmWxlDhEHYQOEcvrgcYc
         hkZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qVGH2wiGbZpiWspViguKvdqRScf2gnv+vmRA21DFLsY=;
        b=WK79UeNBH6OCjpnkWhxoDioAlsqz/LaqRlnRIMBuf3X5IWMqzYf3rzd5w/oLsPMWch
         p49mCSKrAjNnFtWbIL4TD8wLMtnSddNF7MDR4BnS1Oj4HpGMZu1zPkcp1VfTmz+RnDvM
         91trS2b3Ks00C5BoEP1Y0oLsHHhhqZCj6g9t7tznmSaCEmF+A/yHT6nRR165GfjImHPC
         dE3e+8kQacHwQQUxRR6Ojdnnte8/T1FsD5hmNuZh1QPXk8kMdJYEDNcLjdwT8BqVE5pf
         Sshqfpl2y2mi8V8zupV4KH3X+EZRta6mY88+OV9GVyhCJqmwu+YLcxLrrH3FNcWGJC5O
         5oow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q4Htg/c6";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id e130si566572pfh.3.2021.02.26.23.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 23:08:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id i8so12120571iog.7
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 23:08:45 -0800 (PST)
X-Received: by 2002:a05:6638:2381:: with SMTP id q1mr6553430jat.132.1614409724904;
 Fri, 26 Feb 2021 23:08:44 -0800 (PST)
MIME-Version: 1.0
References: <20210226062548.3334081-1-masahiroy@kernel.org>
 <CA+icZUXYLVjs-hXEu_5Vy=TdNvOHhyiXe=hc-jc7SAU04Dtstw@mail.gmail.com> <CAK7LNARmQzJwUWcYPj9QKZatYpC6-gegTuJiAvyhR==8ezWdHg@mail.gmail.com>
In-Reply-To: <CAK7LNARmQzJwUWcYPj9QKZatYpC6-gegTuJiAvyhR==8ezWdHg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 27 Feb 2021 08:08:33 +0100
Message-ID: <CA+icZUXGnOCY5O=cupmmjGnVpYA=Q=cm69ih5HrgpV9sOPozYQ@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: fix UNUSED_KSYMS_WHITELIST for Clang LTO
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Q4Htg/c6";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Feb 27, 2021 at 7:55 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, Feb 26, 2021 at 6:26 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Feb 26, 2021 at 7:26 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Commit fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> > > does not work as expected if the .config file has already specified
> > > CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list" before enabling
> > > CONFIG_LTO_CLANG.
> > >
> > > So, the user-supplied whitelist and LTO-specific white list must be
> > > independent of each other.
> > >
> > > I refactored the shell script so CONFIG_MODVERSIONS and CONFIG_CLANG_LTO
> > > handle whitelists in the same way.
> > >
> > > Fixes: fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > > Changes in v2:
> > >   - Rebase on top of Arnd's patch:
> > >     https://lore.kernel.org/lkml/20210225143456.3829513-1-arnd@kernel.org/
> > >
> > >  init/Kconfig                    |  1 -
> > >  scripts/gen_autoksyms.sh        | 35 ++++++++++++++++++++++++---------
> > >  scripts/lto-used-symbollist.txt |  6 ------
> >
> > People who want to use their own "white-listed" (allow-listed)
> > symbollist-file can do that via
> > CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list".
> > Correct?
> >
> > Why do you delete the default "scripts/lto-used-symbollist.txt" file
> > and remove the default in the appropriate Kconfig for people who want
> > to enable Clang-(Thin)LTO?
> > These people should now use
> > CONFIG_UNUSED_KSYMS_WHITELIST="scripts/lto-used-symbollist.txt"?
> > But again - the file was deleted with your patch.
> > Do I miss something?
>
> I think so.
>
> I moved those symbols to scripts/gen_autoksyms.sh
>

OK, I have overseen hat.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXGnOCY5O%3DcupmmjGnVpYA%3DQ%3Dcm69ih5HrgpV9sOPozYQ%40mail.gmail.com.
