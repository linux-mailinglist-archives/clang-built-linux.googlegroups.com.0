Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRFSUGCQMGQERZUV3AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF6D38D2BC
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 03:07:18 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id w13-20020a4ab6cd0000b02901eb16e42655sf14348709ooo.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 18:07:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621645636; cv=pass;
        d=google.com; s=arc-20160816;
        b=xBJ6zJQlhD9jnPM4N1yjnb8cm7hpsJjp6paRes3MTCxepNsG3xOyvGlv/V9wcsu2Nf
         NsbX7C2BUygSdZqdmOl03NQlSZeQsGp5X64dAXHT9OtCDp0hFzELFaPH58IB5mj9+4Fe
         X9Hw1mEjuCBfy6KXP6GceFoRAyB5LxElaTnxndYE6K+YJXAo4/D+9NO7XWso1kj7RPxi
         OaFCH7ohKIXMOVZqblAQa1wUYQGvOMYce+6f2cqGz8+RjUueml0TJ9qbXyY4JufIxJOa
         jwnHWJdP+2gQ7S4qCP70OykC125ZdHQb8Fk173aB45cgI3JFqUVGCiMSadABNvwAGmOO
         saAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=YdlUoVeXmg1ky3ZT16IhfFXrATyKD1qiPeVFmAnOz0k=;
        b=dnBO3Kaix75v2CIbgTn+MVhGeFxYERWjvIVypjIikNZxeKT28Wsuhq/kqx5GFyzFH0
         oakl3uyuzeMSS/TVIEwJsscPN8OBYXSywdQco8EaeDS5uTt64XbkHlUpOAJ9nSgVaAzm
         aC27CXX05xkCr/AYzQ3f/Uz1+sT1n3osdW1IMDRixgHpzio5dqSu5Lnxy514QCgnK44K
         wdGOqHaWKcjveW44HHe5+QShYG8zXFRDwGR+inrKfI0fnUvI9RUSpFrBUS/l75XD+y3U
         JYgBgjPpOIrcwJ9OF2mH0zBCFDfcbmdsZwVZ9HMTFh1/01UXoy/QLhMch7h7+wdvn0hF
         oIYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uBYt76Ff;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YdlUoVeXmg1ky3ZT16IhfFXrATyKD1qiPeVFmAnOz0k=;
        b=YnDCrB/RhifPhaR66c9/weEo+YU/1mfXklFnSKN+NDE7yFutbUpJ7MjT6mEhPXozaL
         zvePbb6ruPwEzzZ7/zJMrugS2VIK8uRHRbkuR7y1oYPYwL9ZEZBJ2LIn9vKM/fkOM1G+
         d2gkEQp92cbrH8gQKCf6jyLw4/6fAFGjE2yAbKjDxeFYRtTUoORZoJDq3Zos1g7SuAka
         tH/t9yRTJTOemX3hYXvdlzS8cLd52B3OMgwB1oZoha5hSh+Uwa+xFYvonzWj8C2ZTdqB
         CWy5kDPTXSm5TmGcnDbGH0GyRtT8SOEWUHj1oVNSJxKYc5AaKW/HWxZYQWN6gGLpwN0T
         J5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YdlUoVeXmg1ky3ZT16IhfFXrATyKD1qiPeVFmAnOz0k=;
        b=lxYgWUhGzGTuiT/r/sl0Xd49NbzWb+a6ZqtrxxFGfEaBwhTfOW/VxiAWqi/cR5vXi0
         qDHXG7vtu8TgU6CQB/9uqPMXeA7TZtlBTMcJBNn2sE6bQcTnAXDwy2OtjoyL1TeMiml9
         CO8F8hqL2E6kRaMkEcr262sbdTXoRh/5WWozWbmD3t5TLji+roPHs+mXfncOXNjJCPvb
         CGw/oG+liJvVp/O9OGlp7QJE6XXIExbTzN7wRmbiqMqaE2pv4NHU+8l7Hv3CkG1F5x3D
         S5OZ1N8plZ8gq9f9YNsZdgXOGke3rYt0WhRVOoWqxmThkWC4hDB32eWug6Ad12e5Nfhx
         AGeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530peFhfUMebJB8ohPnadI7rq7NpxNX7gudPaz3zwQW2/lIskPbq
	P4K6hSJVfOM2P6e5hmOs5qg=
X-Google-Smtp-Source: ABdhPJxeXRLk3Man5zmSo9sH1vY3mP3ulw/RJOf3fxZv++kyL2MEGm3QaZLKqKTC5FNcio2wMhEmeA==
X-Received: by 2002:a05:6808:609:: with SMTP id y9mr4202114oih.174.1621645636713;
        Fri, 21 May 2021 18:07:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3904:: with SMTP id g4ls2568806oia.3.gmail; Fri, 21 May
 2021 18:07:16 -0700 (PDT)
X-Received: by 2002:a05:6808:b08:: with SMTP id s8mr3873552oij.162.1621645636372;
        Fri, 21 May 2021 18:07:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621645636; cv=none;
        d=google.com; s=arc-20160816;
        b=wntgw0CEOXk7MSglJjT30r5AO8A1X04SbmZVhEOZkSVOna2WRsv1kRlkVM9WgOmMh6
         b8ByPygdYUwRImLJmFpE4O7Oc+ZM+5cQaEp0dQt6wVuWQhkxrIshYTyfbuW9kLtU2GXL
         S0+YFoWPTmZvXf5yopbwY6Wn5S9jwiOR2q+agV56EkwgBycpyUfysjchZxd039nOGOwn
         4zllDAqoiKO9/1d+rhGJH/I3UEMOkm8IiPVU+++F8tdumbYm0V/M5yK3Ben5A3+oZU5i
         LqDgsf1hx8jGLwjXslKEGbtAr7P8FPTn596xcjgJl33UGYkbP5Y6aOpbN+R9/K3Gm+Dd
         CPAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=OcW/O9TMsS58qq1xo0CibXOknhqMRmePaouu9fMkfY4=;
        b=RDyLqpt8mOGXHONOQBmbzWCEayhti2czjd9HqfAsPgFLJAFolyV1+bAy2Vpa+4QLLp
         xzFUaqtXSOSlYstIpPKyV4vF8QVoMukYiBeRAyOVdBsKpy3753r6ODdSU8bWZG40wbuu
         QFSiHXPjaLVW/TmGlk0DD/AIA18bx0JjgY6Rkxbg8AhYoTWSw3BMh7Nq5hfOS3v7UH49
         XOcilrEntBk47SJ5M2g4nSV8SJaj6ctZpV6+zNsH/Yyh9CqRxOLPKB255h5FxlL+i+7P
         bXuduSArowvV/ZlX/482QfuW2aQeGdoH8NHgtW5EPkAGy7Tyr1A8giYfqyf6sBrdFsOv
         EXTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uBYt76Ff;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id m4si428570oib.3.2021.05.21.18.07.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 18:07:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 14M16pmS029915
	for <clang-built-linux@googlegroups.com>; Sat, 22 May 2021 10:06:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 14M16pmS029915
X-Nifty-SrcIP: [209.85.210.178]
Received: by mail-pf1-f178.google.com with SMTP id g18so14482349pfr.2
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 18:06:51 -0700 (PDT)
X-Received: by 2002:a63:a547:: with SMTP id r7mr1503648pgu.7.1621645610684;
 Fri, 21 May 2021 18:06:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210319000708.1694662-1-ndesaulniers@google.com>
 <20210323190532.eiqxmskiankf7hn3@archlinux-ax161> <CAF2Aj3i3-bev_iS6OrBUTzt==4d0f7UiTeY1YPur6eKFqToFYQ@mail.gmail.com>
In-Reply-To: <CAF2Aj3i3-bev_iS6OrBUTzt==4d0f7UiTeY1YPur6eKFqToFYQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 May 2021 10:06:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
Message-ID: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: fix GDB warning with CONFIG_RELR
To: Lee Jones <lee.jones@linaro.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>, Elliot Berman <eberman@quicinc.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Peter Collingbourne <pcc@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        linux-kbuild <linux-kbuild@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=uBYt76Ff;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, May 21, 2021 at 6:36 PM Lee Jones <lee.jones@linaro.org> wrote:
>
> On Tue, 23 Mar 2021 at 19:06, Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On Thu, Mar 18, 2021 at 05:07:06PM -0700, Nick Desaulniers wrote:
>> > GDB produces the following warning when debugging kernels built with
>> > CONFIG_RELR:
>> >
>> > BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.dyn'
>> >
>> > when loading a kernel built with CONFIG_RELR into GDB. It can also
>> > prevent debugging symbols using such relocations.
>> >
>> > Peter sugguests:
>> >   [That flag] means that lld will use dynamic tags and section type
>> >   numbers in the OS-specific range rather than the generic range. The
>> >   kernel itself doesn't care about these numbers; it determines the
>> >   location of the RELR section using symbols defined by a linker script.
>> >
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/1057
>> > Suggested-by: Peter Collingbourne <pcc@google.com>
>> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>>
>> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
>
>  Masahiro,
>
> Would you mind sharing your plans for this reviewed patch please?
>


Do you want me to pick up this?

Or, do you think it should be done by the committer of
5cf896fb6be3effd9aea455b22213e27be8bdb1d ?


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw%40mail.gmail.com.
