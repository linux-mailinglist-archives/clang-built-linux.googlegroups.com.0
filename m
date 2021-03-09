Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBCFLT2BAMGQEEPYGR4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D1661332A8E
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 16:34:33 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id e21sf7081190oow.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 07:34:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615304072; cv=pass;
        d=google.com; s=arc-20160816;
        b=nrxIzd+/pbMO6ilka4+Px8I8wyEyJwPUGeeliJOG1DcYjF6gFD+ZLm5YTFVKgKHrjV
         Omv3mzwd+FNpOTM8Tq6gteha2JizOwSQBWt3xCRrghoMsB5Wo9avfLFCzrh57g3nmSNR
         KucLhzdWphmMnlvPdtub9wmoqIJDcYjV3rKgP1EdPztVh/eHvqkAquWNJvfFQGPXCdom
         Rs183ewJn5tX/o6dBsNEkCC0qQ5lNDC7wVLaYeZK5RsvcmoUii1p39lzW94V6vsMk4rC
         f4hGoEuifhQI72O56tKoPN8GTFSnQ8cH6Ed/TVv3s+i5yQUBtK6r3TmbUphIF6P3Oisg
         ZNzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IzIwlR9HdobDbqHeTucGNVCEeX+Fx1yD1dNwxeKRSGw=;
        b=JEw0YMpdS0DOLVADLYQzB08O7d9svbU6H9k876Y2Ca0QVz3OoDUHtluaig4LG0ZpMX
         EOE5FxdTY3ISyJYsmtds2ZLcvoCe6Kf0Pdl9qvhlnhfib5CstD613QE650QxkVa8Ikog
         izxgKZVUomCeaDuTxM3D5uxbwO1kwNfqAilAgSoZe9lzoKXqOsOFxSazighCMnVQHhxw
         HmeXhMpOIuBzGld1RBYsSLTdhEkWvAltkh9zYvc3RZUN2XJZXcKBBfQKMFD2ZdCCGr/0
         Ev4TczT/4GQs3q9RH+mkkYQI4E/X14F66gzxN7Rkq22FmcgSD2QLYjO8SvrTxQray8qu
         Ql+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HqJV4zzf;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IzIwlR9HdobDbqHeTucGNVCEeX+Fx1yD1dNwxeKRSGw=;
        b=bJBco39N9txR+BgxmmsbEFuj+gWFRVlfx7oLQgacTiKl8Nt77BQbHprVBwIxBM+YaK
         gtyTN89rZAAlmhJAypN6qtxIWEL2ZCpVpjIE3OgnWtDmpatmyefU2bFKtx/8+b0MFK1K
         PBx4enaz1cLFVMduKWWd12gC+81BGjGWftSyCDFsNgBOi5/ngxOBkLgLGfanWONu+g6M
         7JH7FmzHrUnj8jrMw8ilTRQp5JbevYw3+aIydUuXV7EbiMljeLLRU1XVDqglGZcGkX1P
         jomndJywb52YTgTvfPtZFfVA47c8brr+83g6j2LFbGfMCahxB4EyxHTmkS9k2/IDZmHO
         jeVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IzIwlR9HdobDbqHeTucGNVCEeX+Fx1yD1dNwxeKRSGw=;
        b=ee8Jle/+Tfzl4HNKdzsg7WNt2RgpN6fqCVq+APQ8IyTVVyIx8mNIrxPi0h5kEM2mwq
         bfvJ6mq70slXGFHaPgCooammPO5zICAm+F88R2zXM+1p2EICulfazdHq5iJxChF0b6/g
         tHGerE4Z+lqZC5u4Cv0xAfDaHT8oQp3WFIOcsDX+GNrjEwnLvFqo5U2YWUsBdDpbp0eH
         1GeS40XOJzu6a2s506SjxI8CX2P90ZURBPxKn2IervouBxgEWJPOp6N7Aoh1JnvUSouF
         LAe0Umpdr8SHEHN42ztnNoMb0BtRWQL8nMMQQt5A6UJmaqBxY0iMjVP4gk2/+plg9fav
         NNMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Rp8sYk/M0mzkq9uBp13k9V8bxWuDrXXTyhzzhcKt5tV5FPYKY
	fZ5+q3u7YRVF+OUpIrtAQc4=
X-Google-Smtp-Source: ABdhPJzFIopeNNo+i5xCh9Fb+6e8FpDoqRIa4NrJ93pBgfd2abXIH04LdT87JX/4VSj074itUN4oWg==
X-Received: by 2002:aca:f389:: with SMTP id r131mr3277540oih.22.1615304072608;
        Tue, 09 Mar 2021 07:34:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7341:: with SMTP id l1ls121761otk.3.gmail; Tue, 09 Mar
 2021 07:34:32 -0800 (PST)
X-Received: by 2002:a9d:7f1a:: with SMTP id j26mr5568214otq.244.1615304072239;
        Tue, 09 Mar 2021 07:34:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615304072; cv=none;
        d=google.com; s=arc-20160816;
        b=Pxcff425v06KzGRg1ecIadLjZd37jRvvx9/vZ9aOCib7Z3lD+joyLR3ILDwWpQKaRy
         Yl56CgvuiW2F29n1dXGEkFTVqsuU8tQZtybJUCtuaFy/QpWE1XuZQFwOdaf0QpqD6G/3
         sgajPPfR0rcECYsEhCe1/V85keqi6ohcvaRyM9U3PQ1kbIAMA0jXff+hruqxwrSVjVk8
         /pUivkM9ghXNngJZOKmZqlfWCWzvyoRr6GNEn/T+TBm3a9sc0ypOfU/x5mhfM7nEl8Se
         vn6NCxWMd/DW8JN2N1xK9TAJdQIKLf6lLjwwpi+SXTUTKQeV9/TbnUUpSaRmThC2fMK6
         rhQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+KPNW3v1CAc3wIUEUXEUEW/rLF0kxRNIq6zRhfWgqXE=;
        b=bxPO7w236MahQwDS3l2+YYuWRiPRxET9aVkI2b3DWExSKxACiptZtBC6/6Ho3qxMLR
         NbV0ksUguth3C1ipFLdiEiojfGZlSsts+w1vlXLpQYU6wQ9BMTVoyLY/NDlzOqDkSLtM
         +2EZ84bixm0UoTzPTo1pShnJm1C49mL6rMeZGAwBKQ36YKCriWEVUMG1uMS5JSbH9fjr
         xuOMk5c9v4RBLTGlFr0vN4haT4UK7GRKazNXKFUnFML3DNk6HCLT6yY2KxNtEMzKhuCN
         tQpmK26RqM4A2mJ6Qytjxe8MKAVH5yTvLH6hcENHALe2q5A80gdBYUD9SPjrLY9VS7jP
         Zl1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HqJV4zzf;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y26si932849ooy.1.2021.03.09.07.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 07:34:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-9cvrboMHPfWV7fTjaCXVKQ-1; Tue, 09 Mar 2021 10:34:16 -0500
X-MC-Unique: 9cvrboMHPfWV7fTjaCXVKQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 354DA108BD06;
	Tue,  9 Mar 2021 15:34:15 +0000 (UTC)
Received: from treble (ovpn-119-4.rdu2.redhat.com [10.10.119.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E01885C260;
	Tue,  9 Mar 2021 15:34:13 +0000 (UTC)
Date: Tue, 9 Mar 2021 09:34:11 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: peterz@infradead.org, nathan@kernel.org, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] objtool: Fix a memory leak bug
Message-ID: <20210309153411.sptbrjems3odd75i@treble>
References: <1615279576-100603-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1615279576-100603-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HqJV4zzf;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Mar 09, 2021 at 04:46:16PM +0800, Jiapeng Chong wrote:
> Fix the following cppcheck warnings:
> 
> tools/objtool/check.c(1102): error: Memory leak: orig_alt_group.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

Hi Jiapeng,

Objtool is a short-running process which exits immediately on error, so
we don't worry about memory leaks.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210309153411.sptbrjems3odd75i%40treble.
