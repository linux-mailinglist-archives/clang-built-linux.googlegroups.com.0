Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFWJVHVAKGQE34NUKBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD0D843FA
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 07:41:42 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id l14sf55453208edw.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 22:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565156502; cv=pass;
        d=google.com; s=arc-20160816;
        b=G4Ws9jjLC3x+ldBMhoI8u866cESd3tEET125bMQWDyryMLZaDIrKlMYClrUtF+dHg7
         o0n9FMlpPSD2KhsI12Kxl6LybryD3cQkuQb6xWFUw8SaFXzBtS7HfEa0k3ivQM6bofM3
         G3Uu1lReP6WmTL56agToX769jmI3PPhBGaluaeTeOg8XJuHchQs43cYbe7qcXOsLzNqB
         5GN8HIiLOxVdbOGOrUNoCIWRN0cYEiwm2hI3Dbht2l+4pi4HpBNCj/jGowaJsj2fXviv
         DgvswZcOqeF2Aqk7orE9XWNl6EsBg4p5jhxY7zvBK47EdlvnyCk7fY9RPUNTfiQsbDnM
         0w5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=08Dq302khI3iiN4fBoXRup6n+r3U/Rnwz9a2fb8hk5Q=;
        b=AS1ovkYZ1b+joLYEqGw6rVHLSvel2smMmb098cD8Wv6ntOqUJGxwBnxtyIkPVZ42OF
         85sTdeSwmBeutK7UyPkWhMipJPXQwi+VfxUnay49BSv3MTazLBZoB4w7YU4p0Hf/pJCM
         ynAtsDAqDan3dINMp3xjoiiqhIxwVvNOuNVQcP0+v6Em3CXKVee6Ak6YcHKtML4vPjK1
         G8XzFRCF6xxvfKvGNmQfPaykJ3IvaQsCcnBhAjaCblfQS9RcxYJOCtWxuMBG7/JHdUWh
         X7CbhGhPuPjiyXK/ojwuqk+pTw+Kpe85KAxBM1YAs8CIDyF4o3mtwNUKMXw8XxtVo32L
         VScQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRj+ShCB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=08Dq302khI3iiN4fBoXRup6n+r3U/Rnwz9a2fb8hk5Q=;
        b=Afj5ubINQpxKJ6r+56D/XHuAcshtjsNBxamgKVy+Um96r+/AzjNtNwmRDdks2q4yF9
         Ddok3ocqBw+gAMOXKRuzQD3hPqXxwN5u5IqdNtmxn28C/rj2kYguwRhWu0GW1l8Ns83t
         R0+OnUlMMHJC8Un3LMSCiZuiIKqh0WhEfsolM9IGL35X0OZo2CjSgjqc+yg9cJTgF9s4
         T3mcOhoxrSsDJHau/NlKGu7mVjm+tzSOSlC25cHX36y9uk2zeBs4JP+QH5JNlv6jhyS5
         bU6loYp6aFuHG4Svap15dl1jzLuvl2VSzKWJESjREjlr0UVk3/YAkFVwKMB1pr6n6jrR
         l/Uw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=08Dq302khI3iiN4fBoXRup6n+r3U/Rnwz9a2fb8hk5Q=;
        b=LzWOahlwcgJqLpMb44D32KLvvFFU2fTsCLlSBAgIEnVOdKLcf8gg+DqvYmW4NNPkMf
         IeeCmiXLJPG2Omx/r1/D7xJrEv3dFUoCmH9OXrMKNkzhV9wAIXvuwPSPy7qDvQF8udWP
         pm+Uq3lzXyfBCZAWTyORqHY6zOZRTuVqKOm6xz8/FZ5MOeXO5ehQcRIi8uzXc97SMT7j
         qiJaPfHkIBbyvAML/u81yLJstFVN/3831MZykLA/nNVqfQFS+ooaLxTOcKrFuFeQJ8H4
         WYMidFEFpD3wukz6BkFa0rBAXv4AWfQgGbrqlIIvBNu8+CmW31t4/9qqnkDOKP7QtcBM
         RYEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=08Dq302khI3iiN4fBoXRup6n+r3U/Rnwz9a2fb8hk5Q=;
        b=KxsImutYMNwGuqrsss2F9KQ6Iy0H4M6OFnK/x1jrNTBGt8t1RYzS+SdbEJfv8vz3e3
         kSdORU+dezQ+bl5weDdj1nJjcEfv2bK2kCTHiVvjlevim8WguiBkVoqOUGYyFhHfhxLO
         PnpLPSzP9AzFPG6g+rrkn4N8d6UobDly2Fl5YN2N4wSVXIkjRG8ODYAoX/1b5OY7pmne
         c7pcTIsNpcSw4buVBpkRl9x3L0lXCVRvsAeA/lW2CEdK1zTBNoL4kdmQf+1CStYdUA6X
         nKXENc7RpaQ7osY8Ko1bcCYMV6QxFCGHNtNFkIQImBhEOC/m27M24GDwLo4Y3Xxfsr2T
         +uzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHWh1SQ6vnHAQwduCpDVMWyBbL/3utdFe6fV756fJfXqY7lzp/
	tjg/4PZxdKT0XI6Tsie7qN8=
X-Google-Smtp-Source: APXvYqy5ZkgThMgcOvmStQPnGU1CZhZ2vjF8TkKFRyLyfaOBokiwneEfTAeOZWkyp6VQv9scKoJkXA==
X-Received: by 2002:a50:94a2:: with SMTP id s31mr7839824eda.290.1565156502590;
        Tue, 06 Aug 2019 22:41:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8052:: with SMTP id x18ls21833430ejw.10.gmail; Tue,
 06 Aug 2019 22:41:42 -0700 (PDT)
X-Received: by 2002:a17:906:19cc:: with SMTP id h12mr6806098ejd.304.1565156502112;
        Tue, 06 Aug 2019 22:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565156502; cv=none;
        d=google.com; s=arc-20160816;
        b=IaWVJAjiVa9Ey2AjkMcpJP1hqWGzKx20knfQXcLj2kd2Ay/rYtwHTsjhgs7timWFcr
         SjjGoODCT6fvGAwE+MxEoSbRyzhL8dAtYHbWrmbU0Fyk+lvqSbcYVZqds+E5CYWg7efL
         drc8MCS+R6Ii77oh/hMVZdapQLVzuc/79dp7UkHB5ApDPonzTkp+81wPFxBfW4T/tG83
         ts2VqaDCkZJyaKBQ83La/SnO0J/2c+Itcom1zIdZjZnWF0sGFMd113nz5r/eWDgYMcuU
         D8NVyNcA2xtC8rGAAZ7mqAuyxdzM5Ss1Hx6DmSbSHGIGA2HZuuQVNpBUDERCJIKcyOhb
         Y+jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PSwkHkxlBw5WfmbsZn53VO1IqBeb4/AP6wvbIGH0z5w=;
        b=L/3uhp2+Am7C1f0QppLXlsd4pUS4uXrU1e3NfK2DSxuyXE6su7AHux62rPtqqKYZcg
         ibQIwyKelNaQOBlxnTKpX448UwzeiaJXKaZv4YUJHjncZvN2nSl6ikRcqPGsJTUZJrCD
         ZmkbpvwGqSVyPaG2RXykEqA0iqCV9SHm9HHInRcx/oMOpkDBQbMm44lkjtg2TPikbMOa
         zDVgG8Wm+j8Pj6erwoPjhDapqPv5ov2yhgJq3VtHqtJsUK3HgFMCq9J97Rr7hyWTeguN
         RzP8Tf3K5LNXrQ1fGke+4H2gp4UQSkcVKvAgxVSrb36m0ifdsutDq5DKIsqlVMJKcsuT
         IoNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRj+ShCB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b39si5275673edb.1.2019.08.06.22.41.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 22:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id c2so86797140wrm.8
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 22:41:42 -0700 (PDT)
X-Received: by 2002:a5d:6a05:: with SMTP id m5mr8648813wru.305.1565156501563;
        Tue, 06 Aug 2019 22:41:41 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c1sm203537070wrh.1.2019.08.06.22.41.40
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 22:41:40 -0700 (PDT)
Date: Tue, 6 Aug 2019 22:41:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Song Liu <songliubraving@fb.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kbuild test robot <lkp@intel.com>, "kbuild@01.org" <kbuild@01.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [liu-song6-linux:uprobe-thp 7/15] uprobes.c:undefined reference
 to `__compiletime_assert_557'
Message-ID: <20190807054139.GA98037@archlinux-threadripper>
References: <201908021026.gxOYoxJj%lkp@intel.com>
 <CAKwvOdmQh3WJAYq9RKw3ihbL22RXJFcF84jMXh93ceTFdJwNNA@mail.gmail.com>
 <BBA76F9F-5B41-4C5D-A008-23F678EE6311@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BBA76F9F-5B41-4C5D-A008-23F678EE6311@fb.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pRj+ShCB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 07, 2019 at 05:27:30AM +0000, Song Liu wrote:
> Hi, 
> 
> > On Aug 6, 2019, at 4:12 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > 
> > + Song
> > 
> > Hi Song, has this issue been previously reported or fixed?
> 
> This one points to some changes that I don't plan to upstream. So I haven't
> fixed it. 
> 
> Would this be a problem?
> 
> Thanks,
> Song
> 

I briefly looked into this and I think that clang isn't able to evaluate
the VM_BUG_ON(haddr & ~HPAGE_PMD_MASK) in collapse_pte_mapped_thp at
compile time, thus this error. Not sure how to work around that but if
you don't plan to upstream these patches, then they won't affect us.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807054139.GA98037%40archlinux-threadripper.
