Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQO25WBAMGQEMSTKCLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE44347E27
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 17:48:02 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id h20sf1466781lji.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 09:48:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616604481; cv=pass;
        d=google.com; s=arc-20160816;
        b=RUoDXiTUyVv+RAWvfiEajZId+g4imkX8S19CyFznC3XcpuDRpNQlkCnH2ZZZ71f2yC
         L9vWE7cX/ygRpSNjEwbT5uQ7TryOXsEgk+eulkPn/EY1oa+HYmY5EZ1FJ712Q9DbBMCm
         mPVyQs4tXmyDUC+qWzQLl8K+MhUrfokliVuuXZEh4F6jGGzZ4cMsSP5uyohwthIaNDpX
         J6D4zZX9+bNp3eM1j+0Zt9y1hnlGB45nRnADdi1L0GzBUyIBI8+TxelkPI1NjFSWZ03h
         8elkzpimcyc44FKuTWrriQGUpH30iWbL620sg51/8eyqO140PvPEsJs/H0DxyJ3zuY2s
         qfyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=7bsNEXidgWKSLgBQ8hwL37JqupAggmZdb5tHr9YYais=;
        b=H73yfdkdHJ6V85F604gRs0bb/74ccN9xZ1Wqqjg10IoP3vNYcNdd2GRPMueiduN1jK
         asfuDHVJq+DtwjkTT2q1iXEb6sXyEmILE1Uf7zgnLKUFOf4+9Es4ZU7okcMNAFBoljx2
         6UUh1Zl72LH8X+uf39BqJoSpIke0aKGbrn3HUJCnYxKTI01vgxYps2UXmbtpH2dtiQO1
         8gWeYu6DDpYxHiCpLQcgJVOaufJMTAnuEEFQKAuuZqdc0r+XdcuyHz6TRUHISATtWpbB
         KVUq7peJYr6NTophAE2ZyD72OwcoGVlUOBZRpudRTI+i5AFykhcxc7TYv9BgIvpcCkkB
         5auA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CSId1I3V;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7bsNEXidgWKSLgBQ8hwL37JqupAggmZdb5tHr9YYais=;
        b=orlQeaKSDdgf6ooIU4f9AioXM8KN6GgreyLVxUsfaRy2J7aJTkq17OMcT9ymgFzcXk
         tk+/0rZoGiEm0XnI7WahUWVC22/ntMGCHFW7/qvAaAJnHryo5Kq+c1ce+EgJR7QZEXNo
         73h5WaoOprFVw9yrTyytgLuJWBuljx8LU7Ehn2M7rFkQOfDadDKYh7/XTJ3TqetXZeIz
         ZP1LYu8bOPoh499C1Vr+heZiS0wAiKzXothsNGgJfDQfho6OaT/PwU6ta7cZqyxWKCDz
         suil32CJuIbhHb7EgahI/drzbM/u5g6M9kFgwnXJPg8YuapA0gQkyxx+LODuWAX04Z/2
         LoYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7bsNEXidgWKSLgBQ8hwL37JqupAggmZdb5tHr9YYais=;
        b=gZCe1C06PpSN/aMb+zaXEY3vZ4MtGQS/wWY9IwYqZc3nm+NixbHvHuJ3qypo3TUmQz
         WZc74QgQ5zXXxLzwkKwIUQvuTlqQNo//DDAktV5nplfLZs0yW64ufv3yjdJzEISpCcxK
         vmE49Rce7s56UpeiRaYfNrycOvLZg6b+QNDGM3cKMI4rsT40+Ps3/GO0FcAHbV4psHOL
         fPHOsVoPz0N5qD0r9WHyhEuX3E7CxFmbGMiMnGawx2v0EGHmSinzZEEU1DJkbsBUChEQ
         uQEBSaapXr8Mbp/P/sA9PNCcyFQed4+XWn03gVHL1O6um5akYzi2vdm6s66W0iVlMwyQ
         7wnw==
X-Gm-Message-State: AOAM530cOD4qgo1KhuzicRHVEwjrucT8xsXV3Jh3ilHvMY+Jn3eXjFBN
	0vEx/RV8PJS6vUBiwgPinf0=
X-Google-Smtp-Source: ABdhPJwLCq1tlTyAw4IGSmkGhdEmIXFnyab0pQQC3UkYKl6NwbSHmXsWTQW9VDNTHJXx8+nPDJm3jw==
X-Received: by 2002:a05:6512:1031:: with SMTP id r17mr2398573lfr.583.1616604481680;
        Wed, 24 Mar 2021 09:48:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls2159166lff.3.gmail; Wed, 24
 Mar 2021 09:48:00 -0700 (PDT)
X-Received: by 2002:ac2:4859:: with SMTP id 25mr2358625lfy.243.1616604480642;
        Wed, 24 Mar 2021 09:48:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616604480; cv=none;
        d=google.com; s=arc-20160816;
        b=A0qHnmEkznoHgf+DOTqXURVHAXk+NcW8R7S6O4x1loFn4gHfjCU3prSliaygHCBceU
         ALVU/fKzgLGZ6X+Elow70Hq0lE40Nj7B/0evnDb80fMa74r8ASNw64wntUWRPGaUpSbb
         yqxt1vtKAzXMS8rn+5sSo9TnjhhG9sPDNSTH75XNL8ale53VAAWx56lc78jSuF0qn6G4
         hMJ1W4/WXmTVk19MbiCFIr0jrQI+BqtP2hiQW1+BvMcCFiQ9Q/+7qCGx2JCmVkUsC+Vd
         7KiVlERb/CySZgcdDiYJdVAPjMK8mn2NW+qJz7nrSLNpkg9OLl2ggxHHdSvomNWC8Yfj
         eXDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=O1KXY8JgZSwYcL2PCWChjfgsQU3qHbreNaWpkKXWQ1k=;
        b=DXjKyrn9zCBpLtRrGBuHtE6+gk5p/QdFDeemQNFrllhJqS5YaPETwwiFL4UxoAJvxq
         HGQBljaa1gdlzxdsBMS2tqj0bQ0lapWlt8Gb9cnWODC0KZ3HghoifIYI1CPBAND5deIe
         D/055OOlYYmf82JgUz45e3yaFSppiTW6gj1AyNNTaIDM6mWBA7hBRD/FHxA6N2xBW9Ri
         Zzi4vSP/n9M6s+2g1eH6AdIG5t0Yw2VRR+Y7Vr1rOqzeeGSXuL5obPP0aWOroAvDmH7H
         f0vKNRTX1+/EQaH/6yiIFoMPjHik0TZJfuH+SQzxa8u8oWdFEZzAxu/mlQu9rHUu/hT1
         Sn9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CSId1I3V;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id f7si111664lfa.0.2021.03.24.09.48.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 09:48:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id n138so32969586lfa.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 09:48:00 -0700 (PDT)
X-Received: by 2002:a05:6512:985:: with SMTP id w5mr2387590lft.122.1616604480225;
 Wed, 24 Mar 2021 09:48:00 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Mar 2021 09:47:49 -0700
Message-ID: <CAKwvOdmCpMf1Zp3tB=oqse6-Bsm_ybJQ=G5h__kEuOa47CjBHg@mail.gmail.com>
Subject: please pick 552546366a30 to 5.4.y
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	mike.kravetz@oracle.com, Nathan Chancellor <nathan@kernel.org>, dbueso@suse.de, 
	Andrew Morton <akpm@linux-foundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CSId1I3V;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Dear stable kernel maintainers,
Please consider cherry-picking
commit 552546366a30 ("hugetlbfs: hugetlb_fault_mutex_hash() cleanup")
to linux-5.4.y.  It first landed in v5.5-rc1 and fixes an instance of
the warning -Wsizeof-array-div.

It cherry picks cleanly, I verified that I can build
CONFIG_USERFAULTFD=y
CONFIG_HUGETLBFS=y
with it applied, and that none of the call sites of
hugetlb_fault_mutex_hash have an issue with the signature change once
applied to 5.4.y.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCpMf1Zp3tB%3Doqse6-Bsm_ybJQ%3DG5h__kEuOa47CjBHg%40mail.gmail.com.
