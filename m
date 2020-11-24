Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBBVOT6P6QKGQELTMFRPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5954C2C23DC
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 12:09:11 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id 190sf2404854lff.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 03:09:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606216151; cv=pass;
        d=google.com; s=arc-20160816;
        b=jhu+Cx/z38BgaJyt58DNGUJWcuimLKNEkGwShkBCDRXE+QabmoOnuNP10ZcMJYoRLk
         M8qs1NFbfZUp0oLHuS6Glw0QGiPFpJxdZOckLwoaJ6D4g0+pq5fLczX2bICoKwovtdHn
         RnrmWgyf1UUj2MD/SL164SjfoLoEQ7nJuVfmNtdXZYXPt7qcVZjM41H5IVK3gaS2dPxo
         ScBZvDZkHpNBAMEkjErkN+FTYO+xGMHt9x6gxrmDcFp8cBchE1V5O1trRaD5RxfEZJW2
         gdCXHlvPXc7Ncb2xga+Sd65xUulfDu1Wi0eognsnm5o7OxMRjOTluHafpPUXR4/vvZky
         NgUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Z39xmqdV9X4meSJj4ldfTDHahMPreH6vNOZIF/yZewU=;
        b=iX8P+duAonZezyUS5WmjgE1HiI4G5vPZabmRR6lHgroOoY0VLKPczZToX0SfudBnBS
         GuAlfXyWf2vSAXV0sQKNV+mteQ2tdtgleKzH4GDeGRH7DYgXL41EtbHI9ujNBymL0Qdk
         v6HUc5xHh59cwPRECKcwbxhnaQ0UyV0fiN/lkQL0CyHpatquYjNrItDKFZ9CaXNOKLmA
         Z+rZ7Ymiyg2oXyGibVlphRzRaUGPmLEbc8f9aX18/DA8RjcDqGlhmHJacDgo3B9wBgO8
         NiwT1o/mwY59WUEWrKSMcKpoiSnJAh+riLqf3TmGBLrUe4qEVpews9u4pLGHv/P1NsQN
         gotw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WcfZkfh0;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z39xmqdV9X4meSJj4ldfTDHahMPreH6vNOZIF/yZewU=;
        b=BjoQTNAPNWt0/kMMpat1LCl7VXTUy+rZ6mmE9CXY1xokirEus+y25vJAW48utss/56
         pH214jDNNHVhNzSP7vx9Y3RuyD7vhJaQA8wxOI99zerbrBt0aHD8GqE20dMRZtY3nvW/
         mu5nsccDAPEWqUrTaClZ5EOycdRRX/9lnU8sRvZabXp/fBeesPG4LTi7ecFaIYSbjRU0
         ap/slHVhPRrH66XCvefJ/O2EcMkWayqhpW7LkEdK/a/oObla5sY68uUJvSISK6mSd8BW
         A9Ql01mBcGbQkC4v2SfIQq/8iqqxMCyZc2SbbX1wx52ItSZ7ai2LhkKjgLRhbLRCXhRL
         yrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z39xmqdV9X4meSJj4ldfTDHahMPreH6vNOZIF/yZewU=;
        b=cykrFiZq8tjCIAwvbMghl0TRhmuCgtUcCqnw0cBJyeT7elRaISNoJEFOqyWETKrVZz
         UEWuJ2q18yToVk0WG6mXx+yk7BzqPUFdERH7+8T+1H9Bn+xYiFre0v78Wfr5qGSTnSLK
         Eaf47GuBd25LG02tdhBlDpvTwOSCUSsSv3Uhl95Gfi8YY3CC6nGmbwg8PE7FSFKAtxwi
         fYhJknT5Xotfvwi4ayeZmxBjae3tJeW+4NLfcE7LYnT1XDnRke6gNU2GDu3N2z+PrU1J
         F2vud7C6Euka4pgSecDZDhvqFoFh6c+ZZYBhla3nI6u4HLPD9gzw8TEe5f+9BRVVa8Di
         8pSg==
X-Gm-Message-State: AOAM533CkF+KLeyOGbg0eGjciYDM32u+WyiuViIRCp555Hraa0e7IAUC
	ab9ORXsP+FkOp9cO0x48sj0=
X-Google-Smtp-Source: ABdhPJyMANT+ATz8p2eeknZAG8oOiY2OnaCIfAWhe04zzNbdZ72w1T1EF0amr7phap57UOpJ7DWTPw==
X-Received: by 2002:a2e:9f55:: with SMTP id v21mr1702744ljk.288.1606216149461;
        Tue, 24 Nov 2020 03:09:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls1153514lfg.3.gmail; Tue, 24
 Nov 2020 03:09:07 -0800 (PST)
X-Received: by 2002:ac2:550d:: with SMTP id j13mr1713004lfk.301.1606216147034;
        Tue, 24 Nov 2020 03:09:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606216147; cv=none;
        d=google.com; s=arc-20160816;
        b=s4Kb2e/kGvbP4QeMD5DcimOrv73spbEh127ktA1C8BrVcX13FS32EeXu2aetXSwzyi
         i1yas1MEdWKeIFFPMdoWe1CSMCMnS/zEe0Rl8whoG1h117U8le5QPCh+/atcBwo6gvgt
         FbFzDZ2jC9Sjd/tpHBFZSTxDy5NjkhIVhFPMiTiAiSuo1rphxSZHb3ekxaijbKhulPh9
         xMreqGH1QnCyf1jzHKD3x4DIW8G+oCiYYpD/je7n8qQ00NwfNTByELhZT1QlvyEtl4ah
         nZzL+HbC6h2Fjt4zuP9TrF3f9XX+0qTVtBbpTUgm/ArUPgSpJT7J8A7M4H3qZVN+31LH
         Vcxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rZAwLjr8KspoBjmgRNrm6A/fZBDnUklQGOp47xcRZqg=;
        b=QV5zYES6kagjBVqeOvf1nme4kYQuSWTOmz9nRWJ8b5VskTKMEL+d0eKCPHaTLeTJML
         BOf+njHALlubhvJzjnYEKeghj13dqSFHMp/rr2F7hySgha9FeQxyWIhElhJPDe8Eu4n0
         d5nvfngt7n3NjssQcoeGC6EjVkEDMbUxiWY1i+DSVtF0Pt5wDvOoV99v7F9vELd8xowY
         xOR/1nfQwJ/gmWOO022zm8OIpPPLxjoG82HaUL2ft2yTPpn4A2bWQJAWgXEXo1HQXCtU
         jZN9TDzvouomxUwi2i2XV6vkHReSjddoy9EUnSCKs+pj3oNvd+gLlKyOBIoPmBeD9pqP
         HAlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WcfZkfh0;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id i12si511532lfl.0.2020.11.24.03.09.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 03:09:07 -0800 (PST)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id i17so21560926ljd.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 03:09:07 -0800 (PST)
X-Received: by 2002:a2e:9d8d:: with SMTP id c13mr1606129ljj.160.1606216146604;
 Tue, 24 Nov 2020 03:09:06 -0800 (PST)
MIME-Version: 1.0
References: <20201124104030.903-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20201124104030.903-1-lukas.bulwahn@gmail.com>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Nov 2020 12:08:40 +0100
Message-ID: <CAG48ez1FqJYay1F=LUt84DVHd+k0=gXohwhTnwv=t1sv=hTSjw@mail.gmail.com>
Subject: Re: [PATCH] zlib: define get_unaligned16() only when used
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-janitors@vger.kernel.org, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WcfZkfh0;       spf=pass
 (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::241 as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

On Tue, Nov 24, 2020 at 11:40 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> Since commit acaab7335bd6 ("lib/zlib: remove outdated and incorrect
> pre-increment optimization"), get_unaligned16() is only used when
> !CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS.
>
> Hence, make CC=clang W=1 warns:
>
>   lib/zlib_inflate/inffast.c:20:1:
>     warning: unused function 'get_unaligned16' [-Wunused-function]
>
> Define get_unaligned16() only when it is actually used.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

AFAICS a nicer option would be to "#include <asm/unaligned.h>" and
then use "get_unaligned", which should automatically do the right
thing everywhere and remove the need for defining get_unaligned16()
and checking CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS entirely?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez1FqJYay1F%3DLUt84DVHd%2Bk0%3DgXohwhTnwv%3Dt1sv%3DhTSjw%40mail.gmail.com.
