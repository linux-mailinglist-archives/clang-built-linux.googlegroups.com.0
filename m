Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCWHTH5AKGQEWPWL7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C52252FBF
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 15:28:43 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id y9sf2799822ybp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 06:28:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598448522; cv=pass;
        d=google.com; s=arc-20160816;
        b=LFptcmNpbk6hG2yE6FP7Gwn7VW8G2HGZn2b1fno2baifMEhKoTjzp7gDSrpTpe1BEr
         EltD8SYF9F6PAS5PEUw4tRKXFLgMNN3FqIDNiANpLWUDv9VSjLtFjngV/QflyEBhn7KG
         MlISB4yzQPeZUGVr+E4kr/uzAm01bXnhMqEvZqZLp5yxNEkoHf4lF2/KSCNvoBqpTgEd
         6yNo0rdvjbkZ4lf/YUEp4rvPbd4xuTS51JkYnsmikVflVj0KGM8+cK/Iypny1Mp+Httr
         dzv01TPLVJGAv5nwfQB8y9PJNOYfvactmZn9UUrxnsxyDZrW81AObA3/bFzKx6ncRRUW
         +FYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=WGkHoT5A4yp+dshzyU/ZCWGbKC+R8OnVkfW84WIRFMw=;
        b=HmKrEc0nNPPU2nkI70aLAs87sJ5WOYliLzHtEUv/wY056Oi1oeCZ2zsCWUfDiv+VGw
         xh+qNynEapTSSs1C9wum6sPTMEKUTunYdgtlIqCVqZRRPnAWBQWuPKhiXPNpT5n2+xcO
         rgZSSCpNv9HONwBRT6mJib6lMFga8zh4Nq29/bFy1Hb6p7rJeTgAic6G37XGHw7Jt+9z
         2z2PCyOYfGQXrcdkZvW7RC8Qv9uzSqVL8kRsIogpUJpaOPIhWkuGRQUk8O7kUMOgD27l
         G8JyAj4llkswmYVghsEkL5SDgt/IisppWdLm1jI1pNSwY8W6WBG/jGBD+lqPn/x7qumV
         qHZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=CptZvp0n;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WGkHoT5A4yp+dshzyU/ZCWGbKC+R8OnVkfW84WIRFMw=;
        b=F2BF8csw4cPMSV+TOrDXvuA3qyITg2uRpyVCUi0XS73o7tVW9LLDypfATaFGcW6nql
         HYVR2+Ahn8tF8fxkiUshkutu0rOAI/eLJ4d7lzK9vt9xfBruRlACNqdTpSGdEsUPR+tj
         UnwvX0Z5ZP1uWcRKPZ6hUKt+RHifEEhEEUYo2fa52os+NOlMXAmn6XphtnPKNaBXEK7Z
         mMRJUeahGnEeDDOzTLMxSfogTIiRrORNZEf9RLnNkS/NOq4PMhXpHWQoWclszaYSKFH3
         svVjCp7ias5z+am/S1JVz/dohvlmao24qw36Q1BuzrdvZLRrIJpoawc5UrOS67ZtyjUZ
         3DfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WGkHoT5A4yp+dshzyU/ZCWGbKC+R8OnVkfW84WIRFMw=;
        b=pLbkEVvENvxrQslldzqj9ZlwRx4CWI4ibQtkcV5kqCrZUtXeJ6RykzZApZ4wVOnCLc
         QRuUgUUSslbfxvE/R5gkpkiTgETD06z1vepHUUIj5W/XpdqSf+Iwon7hDrTJBh+Np3WZ
         Fw7JJrm2Bibj7zqo+5+7OpAiudC5rTWDyHdANVZMBNOnJo9kD4c1tjsrbhC+UokV0QIn
         aQ4c8/pjMNcvohoYAsHAD5EP7xL0MTGJnNeZjwKFYZ6FlbenRe+PSOZvR8KgI3xmsPcZ
         CABGr38H5JkYrgu3KsU1Dsx7GOy8YLULDxwXskQO3/r4HjIAb61Yn7wOsDo528uIPytu
         Fhug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aKdcpwjL8LM3q6CjEW6FYgAlse2lsslAcxO/c22u3FW6wj9Sd
	QDuB68ZkgrNVIl23OXH7uPA=
X-Google-Smtp-Source: ABdhPJwCf3fITP29BpdsyRA+XPIVbFLXvH6bTg9KFih+Xe3NGBhwocN5vNveW+PKha+fYNbNfdMz4w==
X-Received: by 2002:a5b:44c:: with SMTP id s12mr1309983ybp.207.1598448522163;
        Wed, 26 Aug 2020 06:28:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls908793ybb.5.gmail; Wed, 26 Aug
 2020 06:28:41 -0700 (PDT)
X-Received: by 2002:a25:bcce:: with SMTP id l14mr22801391ybm.467.1598448521755;
        Wed, 26 Aug 2020 06:28:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598448521; cv=none;
        d=google.com; s=arc-20160816;
        b=qcvUEa05c+bqXO1StglD3d81WjaWWj4QSTi8268tM0Jg9QDQdWRWH6GqQXPc+gxOAm
         e7iwqA5GvrOhARrh/ddEnlk2VbGRZ+l7pqZGmFB4D+yljTffol73ILNNi/xgVUqkSoYL
         t1htaww708PoFrWgqdZjVscTmuBJU1W1Ffy65kyN00MaM+FsUBsSZ/rF5KUCwTJIII2G
         4shYsUKZni0yPT7Ii3A+bhZpxqESIzV3qpqK2izDpzyC2GTCyrzkZItV3sXa/Cz3iuz+
         zji7sSHchiGXB3sMRhemwwE1k5KBsTjaT+FEjSn4l+rjzS4H5GcqRi2GE5Q+cJ3kksGi
         Q0QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=nnAMcUaGRUQahEKCpGV9sxhCZhM9PXG2c9FGIHnAxps=;
        b=Xmca+ocglZk+qS5QaTJLAMB+7Akom63wlUTZkbuLnLc+HfNfFRLpg0I7J3ScOlSB46
         Y50USQRDZft+zDuWY6RqRQq+IItyjkh9BeSGEeRqKeYWuW9VqUqZd0CZ+72VEHZRHeT8
         aHg7fKCrWcZ7M/4MPitrP0bhlK4MXEQ8zX/LXsAJ554U9/Exj+K4WzfdXBCT+Mv7emWh
         Hy3v1/4Rb+x39l2qk1mSb00Sb4Eh7sODyrzBZFLhs4GXJIUO8CegGdpLvJsbQ4mGD0ey
         14Vq7OwmNIYao2lgjIp9On4JF5sT9EXmGKis5G1x3H0a67Zk2yeOoHMjMJNeZ9wTE7Un
         dYyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=CptZvp0n;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id o14si132962ybm.5.2020.08.26.06.28.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 06:28:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 07QDSRDR018108
	for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 22:28:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 07QDSRDR018108
X-Nifty-SrcIP: [209.85.216.44]
Received: by mail-pj1-f44.google.com with SMTP id mw10so867772pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 06:28:27 -0700 (PDT)
X-Received: by 2002:a17:902:301:: with SMTP id 1mr12118372pld.198.1598448506530;
 Wed, 26 Aug 2020 06:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200822145618.1222514-1-masahiroy@kernel.org>
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 26 Aug 2020 22:27:48 +0900
X-Gmail-Original-Message-ID: <CAK7LNASTHS8UgpZOvvFt1865hwRf8Z3Oan-Rr2pu2jZpKhrMbA@mail.gmail.com>
Message-ID: <CAK7LNASTHS8UgpZOvvFt1865hwRf8Z3Oan-Rr2pu2jZpKhrMbA@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] kbuild: clang-tidy
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=CptZvp0n;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Aug 22, 2020 at 11:56 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I improved gen_compile_commands.py,
> then rebased Nathan's v7 [1] on top of them.
> To save time, I modified the Makefile part.
> No change for run-clang-tools.py
>
> "make clang-tidy" should work in-tree build,
> out-of-tree build (O=), and external module build (M=).
>
> V3:
> Fix minor mistakes pointed out by Nick
> Add a new patch (09/10) to remove the warning about
> too few .cmd files.
>
> V2:
> Keep the previous work-flow.
> You can still manually run scripts/gen_compile_commands.json
>
> 'make compile_commands.json' or 'make clang-tidy' is handier
> for most cases. As Nick noted, there is 3 % loss of the coverage.
>
> If you need the full compilation database that covers all the
> compiled C files, please run the script manually.
>
> [1] https://patchwork.kernel.org/patch/11687833/
>
>
> Masahiro Yamada (9):
>   gen_compile_commands: parse only the first line of .*.cmd files
>   gen_compile_commands: use choices for --log_levels option
>   gen_compile_commands: do not support .cmd files under tools/ directory
>   gen_compile_commands: reword the help message of -d option
>   gen_compile_commands: make -o option independent of -d option
>   gen_compile_commands: move directory walk to a generator function
>   gen_compile_commands: support *.o, *.a, modules.order in positional
>     argument
>   kbuild: wire up the build rule of compile_commands.json to Makefile
>   gen_compile_commands: remove the warning about too few .cmd files
>
> Nathan Huckleberry (1):
>   Makefile: Add clang-tidy and static analyzer support to makefile



All applied to linux-kbuild.







>  MAINTAINERS                                 |   1 +
>  Makefile                                    |  45 +++-
>  scripts/clang-tools/gen_compile_commands.py | 236 ++++++++++++++++++++
>  scripts/clang-tools/run-clang-tools.py      |  74 ++++++
>  scripts/gen_compile_commands.py             | 151 -------------
>  5 files changed, 352 insertions(+), 155 deletions(-)
>  create mode 100755 scripts/clang-tools/gen_compile_commands.py
>  create mode 100755 scripts/clang-tools/run-clang-tools.py
>  delete mode 100755 scripts/gen_compile_commands.py
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-1-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASTHS8UgpZOvvFt1865hwRf8Z3Oan-Rr2pu2jZpKhrMbA%40mail.gmail.com.
