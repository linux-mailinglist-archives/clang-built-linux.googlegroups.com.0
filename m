Return-Path: <clang-built-linux+bncBCU2XPGNMEIK5RHD7ICRUBGCDSIRC@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E7203262F85
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 16:09:52 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 82sf2182891pfz.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 07:09:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599660591; cv=pass;
        d=google.com; s=arc-20160816;
        b=P1ghC8bn7yqX9bZsAe0wg2AFSLELLoYE+RgVixBnqli6w/SKgWwJbQjvSGLd9BVmy0
         fYxITb+hxQXD6fP+COr2Ojl+h/njffO9nZ7VyMW07vNCrOylerkhZhkdHIIYxAlx2cEa
         Agu5Ra7KSxvhenfzybp/TX6bHRJ0KqU+5tV6COSorJeEwUwJborpBeQX9gYa6TAm2v2a
         0eaKIbN7/gYsxaAs/piXlN0duFBNEyQEswH07xS1CTUJpeM8zYQnp8P2Cquc2+uhwTH+
         F5ktd59ksaE2YRrXaygQY2MDj0yIJPaGWCH+EjmxmTB8fTJg6LR+J1cbuoJYyqfVrH3U
         +wwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cs2rwlQLIsVj4Y8z0xgS9tYO+KVGPD6cimKvtGsOFfw=;
        b=xTPBBIkYEp3jwWKEFF5sx8h0+BFPjO11KkNUVhCeoWkn0USZpy2PxB7S+XfeWuA/X7
         aaZq4ll7l0AlWBZkrSZB9prrFd03IsPvI0pD2a4BGqP90jlyIyRoZs6RK33ewGpIeIVw
         0ojuhytDW2jKU5v0P2T7GYZ1upOP+TJ71DwqY1ofP5OWz02FH936dPXJSeJ2qNzJrxWs
         UPjYB9uyo5Fm0GUKDf5PRNsJG+Upxw/plHcmTYrHAjl1WR0EU5UH0O9OjNhrqsuClV11
         v4z/w3xFmG6753PQkqm/QothKS1MLR9fedfAtapV6OuErWJ4fUdLKRJo2uc/XIw8SPHb
         Kg3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of boris@codesynthesis.com designates 142.44.161.217 as permitted sender) smtp.mailfrom=boris@codesynthesis.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:organization:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cs2rwlQLIsVj4Y8z0xgS9tYO+KVGPD6cimKvtGsOFfw=;
        b=D2pL173gzwCu5v/ZgaaLTQClosSeC0/v34ymYH/grO7BTVKsLKVYSlpfr1fpuGMF4+
         Kfl8986zF266m9cjUop74++lJmsLAvHnJQTaJ07pwmyXvCoc3sA2bocrAck3s7CYFgpM
         JGZzfRXJo0V0VoK6cDKFqV7r4MLS4zEc0KVFovR+/2v1wKWrsliKm/ctB44J3/2O4kM6
         JgOlXJiAwacsGllUEBYkkv314xFHrxBbeq8SNN/cPwkRwzjMC7XCh7pMmNeS/4nzV7bX
         qjKNvMS0yFDKTZPGZKIqtN+QE+1bwOjFN/hHQA0y6d0HxKOZLeYWDJpjZvjK96mCTAkC
         2Q6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cs2rwlQLIsVj4Y8z0xgS9tYO+KVGPD6cimKvtGsOFfw=;
        b=o/qsJwjxChM2t1UVW6uM6h3kUP/hHfp0zgKfEZKeETy38Z2xcqFPcKl/TmAOmbh8/O
         AQoMczbQQt3heKLLKLceIpvBd5PFi7jlaFk8z+HLB7Y8c3vM5utyvWxKeP5PWCiGfezs
         HMV5t4K6MeHI75BhzOeqn6M93bX1mV0nftVKIQyN5YXpG7ecHfbpBsiLf0S63IE9MKOu
         m1AUUM3NWcqZw8pafGq0pIKVp7Haf0g3MQCyKOEB3Qr2s5Bw3V0Oap8yG34Iz0tKKFD+
         rzVD6IX1yBUFkSr2/QHtgYXCaVMoqcy/hLm7IrCWlSFucRdYlFc0sNYCxEprGteP82WL
         l3fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RHz7THwv+06VuV8PQ/gOxch9qVA6+vtPYVJsDKAShKMeimQMW
	MoN6j11Cr7xlUhwg8HCKG1Y=
X-Google-Smtp-Source: ABdhPJzVxX64Wtef+VnaP0xx96t8r0G1kVgcfDoictq46qpMsj19RJkkT1s9e6PGUalUdNS5V4ijWw==
X-Received: by 2002:a17:902:a50b:: with SMTP id s11mr988702plq.136.1599660591110;
        Wed, 09 Sep 2020 07:09:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe98:: with SMTP id x24ls1062453plm.6.gmail; Wed, 09
 Sep 2020 07:09:50 -0700 (PDT)
X-Received: by 2002:a17:902:544:: with SMTP id 62mr990355plf.162.1599660590535;
        Wed, 09 Sep 2020 07:09:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599660590; cv=none;
        d=google.com; s=arc-20160816;
        b=cC8OLT7G0uERtjQb9T3+UWn89rlUUCBOXqHYnekQt13iWoFgRommI6K1cxe7hwahjm
         8CE1fVXWxl9lUlZ9ViX7S37kBGVfYGd/Gcf5JfYU2zTVHk2QJFLXLkZB7LgxvhbE80kW
         3LKXZI/e9PgT4d72YaQ24kSZWpY7erXaVFoyqMqq/Owt5flh5rVbpLHDr2LMC2WOfCz3
         3Bh+oQwgwj97u2S4wGjRDbK4eEhowa4mkcG0zNfUd4JL7AGFGLSPxvsT1KH5n1gil53H
         C0VRxldaVrJXuZ3hjpvKbRbuZvHuGGD8YrYEfuJdCKCDXYImpdcB8fH+c937HH66GaSh
         htrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=RrFxDaqHBVYXWbZIZKuQ96RM4zYk7c9CELkVoWIVF8Q=;
        b=luclQOEW2ufHexhwfmuxfMOSd0RvnUrW/fNQilfXp/f6aRPOu9oI4aMaf4GdEo1QhP
         B7c8QZ8huW7trdo0clfOWdQM3vUDkk3F2hPF6P9nEbSV5bqN50A503C3jfqAPR0IUsb6
         SzZoJpsgdzQN/oOgiiVfUNVN0KvNpn/9hSK75RoL4g9iB63/HOwU5qfFWtRfuLYWIyr0
         UMcE5Uq8leRnz5boQbe6F/czNim0NHj+4Zwlt+VnZJJPup1+G25hg34CjCPxzmwBIVOG
         8Mc2sWXLrQau553E76mO7p+Yxm7MvKue41s3DBDXxCAep+LwCcWUGAf1Tocx7oHBOwFp
         gMUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris@codesynthesis.com designates 142.44.161.217 as permitted sender) smtp.mailfrom=boris@codesynthesis.com
Received: from codesynthesis.com (codesynthesis.com. [142.44.161.217])
        by gmr-mx.google.com with ESMTPS id bj6si168482plb.4.2020.09.09.07.09.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Sep 2020 07:09:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of boris@codesynthesis.com designates 142.44.161.217 as permitted sender) client-ip=142.44.161.217;
Received: from brak.codesynthesis.com (unknown [105.226.107.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by codesynthesis.com (Postfix) with ESMTPSA id 851435F138;
	Wed,  9 Sep 2020 14:09:48 +0000 (UTC)
Received: by brak.codesynthesis.com (Postfix, from userid 1000)
	id 9751F1A800C4; Wed,  9 Sep 2020 16:09:43 +0200 (SAST)
Date: Wed, 9 Sep 2020 16:09:43 +0200
From: Boris Kolpackov <boris@codesynthesis.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] kconfig: fix incomplete type 'struct gstr' warning
Message-ID: <boris.20200909155725@codesynthesis.com>
References: <20200908221638.2782778-1-masahiroy@kernel.org>
 <20200908221638.2782778-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200908221638.2782778-2-masahiroy@kernel.org>
Organization: Code Synthesis
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: boris@codesynthesis.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of boris@codesynthesis.com designates 142.44.161.217 as
 permitted sender) smtp.mailfrom=boris@codesynthesis.com
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

Masahiro Yamada <masahiroy@kernel.org> writes:

> Currently, get_relations_str() is declared before the struct gstr
> definition.

Yes, I also ran into this while building the kconfig code with MSVC.
I just moved the struct gstr definition before lkc_proto.h #include
but your fix works just as well.

Acked-by: Boris Kolpackov <boris@codesynthesis.com>


> BTW, some are declared in lkc.h and some in lkc_proto.h, but the
> difference is unclear. I guess some refactoring is needed.

Yes, please. My (potentially incorrect) understanding is that lkc_proto.h
was for functions that are not (or should not be) used by clients but
should nevertheless have prototypes due to -Wmissing-prototypes. I,
however, believe this no longer holds and so would vote to merge
lkc_proto.h into lkc.h.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/boris.20200909155725%40codesynthesis.com.
