Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQPFWLWAKGQERJ62G7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0B2BF341
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 14:44:49 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id 38sf1279184edr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 05:44:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569501889; cv=pass;
        d=google.com; s=arc-20160816;
        b=kNyUyapQR1bwUk8gDrDFAsx1dfCUruwrSWW4fTRd17tNTiELIQbbGoMRBYGubp/nLZ
         zmK36AzgRg4PIRcDUKc5DHuUH3fMsiMXWdCPL+EOK9L9pDl1zN4RGsuU0XrhTnxj157a
         2jgyicfKR3Zo6AadKNmTC769G1wLE1toCBo3TKvCd6sc+v02ImWmCWeDZvqrtPHz06zI
         KE5JIQlJd7rkACRsALpDzN2TmBUf3Rs3GvrviQK2Xe54BPxIOX9RS5YEJyGmLNWT5QmG
         XJ1jCW1fgvzgV0uV3YkUQNQBKu0Ux/AdxQCTi3yG7PaIUOnwcwgveOQ0eSqga3zntyJ3
         wyrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=2sT814EDvm1g9IJlwtnDh/LP/ojcJxSth3WZoMoYASk=;
        b=X+kQwxVNTk7QqTEfI0hcbrGorkm8vrtwJ+72JoBylgpeKa+7BqWxbXfLlRVPfc5/Am
         +7jI51YliFmYfIWR7aBFIXvJmrhAXwCYZ9QxL4M/WMc1TocR2BcrkBUTNa96TmMG9Zn4
         1rontxA5uCFpTJPjqJ/E2eKJD3+ofjQr0ESCegA7cZ35qgxKyC2QOvBY/OOHI5er7MEk
         BwsGQZbBJvGevaEPtyxzqpQJomwloGPY8eYZoHdhyrzoBHkcTQ+wayiplQbUgV/K/TLK
         l2xwSiJMIT+s4YVDGAjSuyqUqSQyDr4rF7P1I7Sun1RCVAP3uha6vOjJmse50/X3XIlz
         gI4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxmVAyUn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sT814EDvm1g9IJlwtnDh/LP/ojcJxSth3WZoMoYASk=;
        b=bqdmVNHS6sDdnKIROWMf0cFcd7IyjwVuUTyXOCTg7BzZIIx+UQmR2EDzVaJFV/6cbE
         1ln+vpt4FqP4gPkRGozK/nM9zMfaCdbDp7cCXP6GSZf/eX1nbJaX/jp/BfNQ+1rgfHbE
         oRoK5zkeJMhvtKh8v59cg2JKjWM7fsJAO5xfg2mRgzRwzavnvyXppLOlqvcU4jC/yptn
         I0yNU4gYCehphP0tWXQdjmfyR2urWax1u+eT4LBge7yQBwdSoaVArJ5ltqpoy4XtHE52
         me0bzhydmxvXYne89++sEUKZz2nTxvA/muB5EAdDgdUYg6uThGB3s24MhgAyOMNfS9Jj
         iVmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sT814EDvm1g9IJlwtnDh/LP/ojcJxSth3WZoMoYASk=;
        b=pX3OsxwvWa6ct3+ff1NAcb9z1CzURNlTNklxvme7KY1gVm35L3hNV2V9YDaYWDjQN+
         F7PdqxuiwPTvNeTAjLDslF2XalDbor9+v6VAaVsoGwQ/tr3J0gVz57vhnwS+mqGAWF3t
         0zqog3C79rfAeX+dQRUWtds/D3qDl5gwUJei6CNgJWMZhzJKHMkrkQ4UuHKTxpL6ltzH
         O5Nizgh7i/1qvo2zFmMMtJ6VhwvEGn1wqtsv22aHEatySQCsUEpWVzKF2DrWYZM6JyEc
         IQVV0sV45BmN8x7oL2QxeM05bBxPEz7zWfZ9fllu1S7J25kvsA9q5ZUaDNZKOLtgvvuO
         hEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sT814EDvm1g9IJlwtnDh/LP/ojcJxSth3WZoMoYASk=;
        b=VP5rBxTfNceyIKlz4E1LwE+aqZ0f8uAVCrH7pFugeqmP6/FvMy/f/2Db/4hfAJMWa7
         dCSPSM0pV+hXoMB7wzwCbYGUBGvn8FKteS6+KQg62ugh4NFKpPjhNcTay1HBhgTSNO9j
         xTh3kGWNShtmzdzWoC2wnlFaKmPZSyrviJaE+oogCxA9MRQM+HuBGe3PRexaKuPAMyLn
         eX1M+hx4zMYyIR9hkDzxt40uhc5Yh7cSf483KQ+tw/PgoG/VdD+hYKR3oXwJLTfmi/uu
         o9c7Bjue6D/XSHMtchySyA50NwAd4nNvDzF3kycRdt7MvaX6BX/QFjQhD+OHQbIv+p1N
         nNCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7VTzSRL3zMY3DmUT6isJfUKQNXq+n0k/h+oRiWxmi9AKCc7kj
	30TzwWLOw0Nm+6jMdiAFRrs=
X-Google-Smtp-Source: APXvYqzBl4A9DCGu0Ap8rkd2CkEXaIaVdVSFt+W6YZbGNhSqf4+yWWUfGTHabgEIxCPocwfdOG4G/w==
X-Received: by 2002:a17:906:2ec8:: with SMTP id s8mr2976716eji.275.1569501889493;
        Thu, 26 Sep 2019 05:44:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d98d:: with SMTP id u13ls526423eds.12.gmail; Thu, 26 Sep
 2019 05:44:48 -0700 (PDT)
X-Received: by 2002:a05:6402:290:: with SMTP id l16mr3390289edv.178.1569501888967;
        Thu, 26 Sep 2019 05:44:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569501888; cv=none;
        d=google.com; s=arc-20160816;
        b=DaLEGAtXCn5bLoDyaOTRTwnD+rmORhDp3/ymzIdydc7aBoJM8Fxnk3Puc0fYYup1SL
         a1wSkhEzn2DK2U08/H1XoGeOozbeDmfCwh7/+vMpUmLsvYXqMB1fJoxQ0cPYhdBcN941
         LvsUzKhvMNS4ygztCuzIsHQLtdjrKPvYkbXSOUe4HrAebSUsKBiQA3T/viQwu4dNEatp
         Oi8Fbi7HWJbWaqHtJexaeZO2GtuUWu2q8zKpCRK4fIUxXxv5qsHq7r1xRalZqvNX0sOh
         Q/3dT35FqosKqc3cMeziYm9cvhlGFDUf+s4lEAWO6CWBzpFBAsGmxI8JLREvKl6ZeOOQ
         Dq8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=iADZezRp+Wy1Ks9pAmQUq/l0x43K3a/i7qgg1mXSnmY=;
        b=ldjt2ViIn6Q6GQ17phVCmV0n9X6hwXNrc9naZJ29vBhCqxMakRwmM20hMjalfwza11
         2H0MYaHai3NMs+CXCNsG8NMLNW7/YN8/molMTd5M4U33wGZxA8A0vFZJYSwb81PbN+yC
         RwrhrPS8JcjBlXSbWHD4reyox/u+iIiRX8yojWRLoUYeoudvvV7mHv9ZtuTQC7TAo/33
         T1t0YWjFNlKhRu0e/oVqCx/DLDjjLJwQWR08Yr1FdIWM68n2KPo39/pyd0gFIske9dfL
         Lru3983CAzy0jz0Om2nfQvC0O19E3pWdSCY+lTvry34zj9d3lrA+LsRi4eLe8WB4lzLv
         8E/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxmVAyUn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id d27si90962ejt.1.2019.09.26.05.44.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2019 05:44:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Received: by mail-wm1-x330.google.com with SMTP id b24so2408901wmj.5
        for <clang-built-linux@googlegroups.com>; Thu, 26 Sep 2019 05:44:48 -0700 (PDT)
X-Received: by 2002:a1c:2d85:: with SMTP id t127mr3060152wmt.81.1569501888782;
 Thu, 26 Sep 2019 05:44:48 -0700 (PDT)
MIME-Version: 1.0
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 26 Sep 2019 14:44:36 +0200
Message-ID: <CA+icZUVQqOie6Q-r1wHXkNsRASYqzTAdGqrkhfYsA5Ryh2WT0g@mail.gmail.com>
Subject: llvm-toolchain-buster-9: LLVM/Clang/LLD/etc. 9.0.0 final
To: Sylvestre Ledru <sylvestre@debian.org>
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WxmVAyUn;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::330
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

Hi Sylvestre,

is it possible to have version 9.0.0 in llvm-toolchain-buster-9 APT repository?

Currently, 1:9~svn372167-1~exp1~20190917193038.54 is available.
I have seen 9-1 is in Debian/unstable available.

Thanks in advance.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVQqOie6Q-r1wHXkNsRASYqzTAdGqrkhfYsA5Ryh2WT0g%40mail.gmail.com.
