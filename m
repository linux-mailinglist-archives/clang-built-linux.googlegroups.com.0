Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBIEDVOBAMGQEBT72NAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1E3338315
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 02:19:29 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id z22sf7328634lfd.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 17:19:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615511969; cv=pass;
        d=google.com; s=arc-20160816;
        b=vfdtnVwTZnjsprGKxg4oQrV4g0jK8d+/HrxNYQuoD0hNoKRkm2JVQhgjO97vzfVs4A
         SWp7+252dPhBHhwe5Qm4ZdsY9NONk7FyQfvDmOles9NwXcbEQBA1iApxP1gqH5726a0k
         YXyAKlG9ibDtITJ03kZExqbVwkF1C1Hvtr7eTUsiaZEOSpTbbo5RmH7FbCv57c849wZ9
         i5oOfP1m6/+DXvBbbhzHiENm/xYiq7yjIz4zlRPNMEvjH1IWyt3eVos0s7zV2zmasE5Z
         hwX1qO3tZlfM3g/WqVbQWrYwCpJjcKe+dY61E/raSxB13sOuriHnofV0Ps/GRexTMVLi
         IiSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=fYlCenPdT1LLuSHG4EUpHmbxzu1cN+jfSeRKO8+B2w4=;
        b=m6/qoeWUArTcTUElopV6fmsNcMzy5ItCmcQhH1s5owEtvA9ya0IacTBeoK7zE5Tpwo
         EbufK3yq1ODC1iiwi6Ode5lOd1vYlahwDbfqsEeflZvmOKUP2cWsJh6pfUgJlO+duwpH
         T7K+KvC1Gib3lBoQd1CjNbGDrvw7c3iYhOy3N/DptAu7ajo16eXgVDJfgvH1a5sz9LLi
         1nzT9TqozKXT6ZuJ9mhuiBY8noFN5m/qzuRL6yZmHQFqg9DTZcwQgQFYHKPg6I3UlNib
         RH8hhljGEI367zFLYmY6JZ1fgx5sg2ZNiBs48w8mjPzCzrFN1oBaw2eJ6ETjv0bfJ0Xi
         YZMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=OOzUfyKR;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=etAf4Pw5;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.53 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fYlCenPdT1LLuSHG4EUpHmbxzu1cN+jfSeRKO8+B2w4=;
        b=m9K3cNNVHKkx/HPMoAonz/xAPtAjUmvym0ZjCabg8lhxka97UQliyodpdoY/Gh3Hx3
         AbohMWXT8SivwnxF8b6Sf9x0t2PkIlhFPzlAy3uSKJ2XuboXKx61rvxoZxUGmFf0fMD9
         rLf111z75QYjh1Dpw5JLuV02iBICd64bV0kY3xZfQ2aAdqNFoWBaTiFYGOV56X2H2tuz
         21vYn65q+edt3LohgiTD0Vj7QWYpUX5pRsEtiq9yeVUwPX1OVZ1lvlhKxjCDQdWJ4hgR
         3TijvA8XNbk4LlSOjFUd5IuGWvXR9tGE7p8XXqFsBSSvkPiXI05vMOTG29SrFkp8zVBS
         lznw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fYlCenPdT1LLuSHG4EUpHmbxzu1cN+jfSeRKO8+B2w4=;
        b=d4UOPA9EyyNETXpdTju8MATeTmg3KvogBfGZKA+XWo6z5WC5U+vD5DR7bQYENXwbXJ
         JpAN8ffGpUBedBGFIB8jn0om6ILSIgNgupJKArZzdw/IEJjxRjV+VrC7p8ryObtr6qBB
         Mgep9vlBOc+vxRXPUi6tj4eOvWg1e1FHeW0/YjKrKG5MWAZDtbaF9EPLf+ibt6OVDZ+6
         m7SEY/Een3bGJXc4H/1ofsGRvAnrwf5DcZD/rbNMFjA9ztOHmeT+ZzHJ/kQE0x8qyQoQ
         ISjMsZC1gU8Er45UfMjLPB/qdvjdqXjuRQYjaIstUuqZzgoDDeEWYNGBBYir1pxhcEAZ
         JUoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zppyVWiu2wIrJboVW0zdc2jRZFCuQgM9VTNTxrjZ/Jde1mYtP
	5O/BrPfnPhZobE3ndb/nB1E=
X-Google-Smtp-Source: ABdhPJyHhgIofaC0ytUQslE2P6LHarq5Yub9L3XOfBz/DiiKcIql3JIiKIzSeSMTUgAmYAMYIt5YEQ==
X-Received: by 2002:ac2:5f1b:: with SMTP id 27mr3836739lfq.425.1615511968897;
        Thu, 11 Mar 2021 17:19:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a409:: with SMTP id p9ls1643990ljn.0.gmail; Thu, 11 Mar
 2021 17:19:27 -0800 (PST)
X-Received: by 2002:a05:651c:509:: with SMTP id o9mr907861ljp.369.1615511967746;
        Thu, 11 Mar 2021 17:19:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615511967; cv=none;
        d=google.com; s=arc-20160816;
        b=B9Ydc7d/OL1sC/E4EKOVcI+AAK7qNcGviJPbwVnjQd+9no68KL7wFCzxQhYdVZvC3T
         J9OBJfKtGIEAQMBmz4OHySecmV6MTs8PXZnmZfQ7v7uhXY4hMmWm0psM6kIwmoGRHm+v
         6lVo9djcKEXdUDZVd5MXKNsgSGEdTaeE+eL+R5upzFQMrSvj2y3h1shr6vH0FbmYDBeV
         1OjKFeSMpRE4+KTuMVkO4I8kYyjwH6wKDxVVMFlfwvE9nXdJkDmSC4wp+Nj0a/xUWYR/
         /pQXVpfANHU7y2A9fuLoS3LCbM9sJSC1SGuApgeR0Ao3OtfcL7W/jXxCCedLp1HKZ62b
         1zlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=o2bibP4A+5sYzCFA0gEpKbpagEjKW3SnBhtpB1YDluE=;
        b=Lzswlox8x9wylEN0XselUYzJa6bbJnC0zc+OfIijdjUQq3XFODzLTXWyokKFEYuwFz
         ztpKA8+Y2xlA3KttH5OXXcLQ3nzhGTkHpxgOrP1yI1wrr7qL5J+2HxJ+F1HR6EJMP4xR
         EAh8ILFNnmzBXnjLQNmekq7nwe9//1s+BO6FPC0I7D1o1fkycy8fLvhHm8AmjhAPIeXK
         2kdH+5QYAsjYAbNAxc6YNnfEktWMgnZIof2CnVjHHEfWjVUuEBJOTrEZZybgUriqf1ud
         w1E7xjbrBPSWTB8m2dq3WgFT/DIpi82wLUGwW5Dhc5bCzlHcaiUmtYufpqJmDL6KjfIG
         bkeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=OOzUfyKR;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=etAf4Pw5;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.53 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com. [173.228.157.53])
        by gmr-mx.google.com with ESMTPS id q26si165309ljj.4.2021.03.11.17.19.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 17:19:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 173.228.157.53 as permitted sender) client-ip=173.228.157.53;
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 7ED5312D4EA;
	Thu, 11 Mar 2021 20:19:25 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 76F8D12D4E9;
	Thu, 11 Mar 2021 20:19:25 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 79EC512D4E8;
	Thu, 11 Mar 2021 20:19:22 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id B6B052DA0024;
	Thu, 11 Mar 2021 20:19:20 -0500 (EST)
Date: Thu, 11 Mar 2021 20:19:20 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
cc: Masahiro Yamada <masahiroy@kernel.org>, 
    Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    =?ISO-8859-15?Q?Bernhard_Rosenkr=E4nzer?= <bero@lindev.ch>, 
    Miguel Ojeda <ojeda@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] kbuild: collect minimum tool versions into
 scripts/min-tool-version.sh
In-Reply-To: <CANiq72m1e9MD83sP5iZCfzoCR0qLz2HQj_VVkE4X-56vf6e7fw@mail.gmail.com>
Message-ID: <32or985-8s52-17pr-62qq-s1q3r13p12no@syhkavp.arg>
References: <20210311094624.923913-1-masahiroy@kernel.org> <CANiq72m1e9MD83sP5iZCfzoCR0qLz2HQj_VVkE4X-56vf6e7fw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: FA10F8AC-82D0-11EB-AE2E-D609E328BF65-78420484!pb-smtp21.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=OOzUfyKR;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=etAf4Pw5;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 173.228.157.53 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Thu, 11 Mar 2021, Miguel Ojeda wrote:

> On Thu, Mar 11, 2021 at 10:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > +# When you raise the minimum version, please update
> > +# Documentation/process/changes.rst as well.
> > +min_gcc_version=4.9.0
> > +min_llvm_version=10.0.1
> > +min_icc_version=16.0.3 # temporary
> > +min_binutils_version=2.23.0
> 
> +1 to creating a central place for all minimum versions.
> 
>     Acked-by: Miguel Ojeda <ojeda@kernel.org>
> 
> I wonder if you considered creating a folder with files like
> `scripts/min_versions/gcc` containing the version string. That would
> make it easier for reading from other languages or even importing them
> dynamically into the documentation, thus removing even more
> duplication.

Alternatively, the documentation could be the actual reference and the 
script would parse the documentation to get those values out.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/32or985-8s52-17pr-62qq-s1q3r13p12no%40syhkavp.arg.
