Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOXXZT6QKGQEXJ5F3JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D5D2B5721
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 03:55:55 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id n18sf8469377otf.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:55:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605581754; cv=pass;
        d=google.com; s=arc-20160816;
        b=mxcjEU3Wkg4jTNQoNRSUwW2+uXJzG9EYZiOE9CuUKcUJIdzqHjRWtmLX3ZtIzrRcht
         IP/0OY8PD/hk1bskOnSXl1aiELJoQe1noX0u/FMdocgm5Xtf+afRllY3NMx2bRztLYyM
         b/0FoGuuuEurI8dNHQIC4f2ZrAU/62V/MlOgDJ9JVnlIwSsXB4nPeH/DSTyH6E0WeWtn
         BNZDyBQpzYHqiv4JwFp+tKqVqCp3BNo83SwpAmY3rMBlSo83Ztb7QWlTneXj0i+et/0Z
         schKbtKr7b7BGbzuunsoxaZf504GtRG9TGP0wGccDWJ0xpe6VdJCw1B3Ku5EIpam2cN5
         U4Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mB0Ija4QzJpYKXx2Rkprwz5CHxe3dTyVbftmLQ94mGM=;
        b=LSMB8s11WrhgEE8QGfXxIc6KS7Kfi7swoUPM47l0L6vCpZo90IqmBcNKEq4hAfBvS7
         /d1KU2skjYC5v/F88Bq5JqGvXqpu/80AYOFGt40KXPpGF9kPag1EV3wpx+4uvJymIdIl
         5vYOAF4nuQgnT5tq+5iOty66+HZ2fvVIsmB2MfD9EhnLPekswLX4eowm6SPo9b7lX3tp
         TCmKkwzkyNKg65t2zD3FIgoxO9eV/DK/SqyarpINOVIcCZE9zVXkb5lODFAzIBJWKob+
         m5q85+PdROWMV92+x4HJqhOYhUXZKdePMsQkeaf/wd/ErLh2AgKwf90oY3gvGuFXt27c
         WYpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=USQyK3bB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mB0Ija4QzJpYKXx2Rkprwz5CHxe3dTyVbftmLQ94mGM=;
        b=eJGUsDHW9LI1krV2EsmaVNQ7GgY0YM5JTSgQNjzXw/aeqoOAbkSl2exJCSOmXi1jPL
         zshnGasIK4uM941hr+xF/tWWPM/FMXGgOQDy8A6dxkI7SLAgq0yuDcyWdHpEqn83OeQ3
         VgANdhClquQz5arEUFQAeblMqk6901z9IaQs6Dh0idjNDayLcJDTI3hBymJkkcuIVFda
         sr5Fy/ibeXTuhAA39I/mDwst4bGNwFGjKw4Cai20TDv14Q4siL1sKxVK37mSkV1Ftt/+
         /m/DPwVVX4smUwDyXOOUmZKzkY3B8zWr9VzrOGP20hVNShj9sSV4VQSvVNOWR2VHsMwj
         e5Og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mB0Ija4QzJpYKXx2Rkprwz5CHxe3dTyVbftmLQ94mGM=;
        b=akXxO7ttfiV2LI0NsX8jfGHcc18MBm45Dt8THZ5/sXmP53MrfchA7z9olSa8rBezd0
         kbWVxaroKDep69OvKAAWcdr0doRBnKLY4X3AH8xQ9VOfGh9zgTaq3I8J0FdXpIDA+6gz
         qtTCl5/ouEf5DLZbVWJMT4GV/AnNBMjnrxdsylQlGs7SjJEVaCmkYqX3OMS4kPDdyVdd
         URoHjF5ZKc2gGi8B8ROSpHPBofsOjoXfsLj1sqtnrb/ElYZcG/xG1Wxz6eybw/cPzaAI
         h6emQ59KhUSYUIXPMY7dVU/6LiVlUkKJVNmuKCQEeRTr4WTTA3CpjbB0FxVQDLoQChjo
         hV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mB0Ija4QzJpYKXx2Rkprwz5CHxe3dTyVbftmLQ94mGM=;
        b=LMwuopLwnl7eW4OhnhHt6rpchqm3cZUvVJy+AAG4yjW7oecmHMUHtsEnJXxPud0VCe
         qsqpIsVVC2EoCitQaxfW1cPE1FlNabqi6asYSilHlXf7RLt/f4lzGduVOuJSW0BNCm6+
         35s/XgZ0Z7xa5Q69sbxWD2CAZtZnFx85htsPKz+wyVSK3ILxT/D8xy8l09mUKfE4r9RU
         s/PcTj0rVssmSrJHjWG26Xc5mpYvVb9aPXyS+v8RvlwL/YvOH24AgNi+0Le4WTK/rNY1
         Q7nEGQV+ZpsdkDK/dm6qAiRj5t4w7L3d1QkKm4XxznAsQwPHYpB8C6y3183qaNhTH5Z7
         C6Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533smEgJhwE2fe4t+yOChs4iMVvpn6nCH9DLNwIbZEmnyvVTUar3
	AwnvDEGhn3lb5f3bFoyI+bw=
X-Google-Smtp-Source: ABdhPJw7uRx0CyMpjFOQyzPXVIs7BtUoNH7kQe8VqMhal7GiFsG9rLkL69zQo2A3Hk+Dox9Pf5FsZg==
X-Received: by 2002:a05:6808:10f:: with SMTP id b15mr1187271oie.88.1605581754604;
        Mon, 16 Nov 2020 18:55:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:344b:: with SMTP id v69ls1175894otb.3.gmail; Mon, 16 Nov
 2020 18:55:54 -0800 (PST)
X-Received: by 2002:a05:6830:2151:: with SMTP id r17mr1667526otd.328.1605581754263;
        Mon, 16 Nov 2020 18:55:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605581754; cv=none;
        d=google.com; s=arc-20160816;
        b=vB0Ttg+Hg7vRk39GZZ1oHb9lumXMy/6EYBJbtTPA70aRk6gXAieE9m5dW8qwcW++Ku
         nokkJ69nrYZsr63tA8GoGHtoh96qQVIFGiCQrTKtY4TSsWiikrd8tq2IdXAOHuWbWl6d
         jSEXNm29Olzr691bk+cIy0YebmaVzasA5ju/SDFvm1v/Jg8g9pfHRKLJsGUCkd3HrNem
         EgvylbsrcmnBz61WUPjZ+IqybBpq0UrmeEjRE2/pas7Z+rIB4snvGqDpbdN5LTl48omG
         Qd+P5o/PVRXFZXc739o4U1TogfzaQHTx9YiPINqVDo6N4eomWAGsOlvkjyQ2DhLoSTRu
         +8Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rph6elS4sVb6X0aZV8oBI4KEro3xkFbil1su2bbIStE=;
        b=q3yX8rUDCa9OjrTqkVcUnzRN3qGUrZ4WuSMc6fWHIyfYW9oJqh2EP7/G/ERCCvxo0m
         2jXfGOv1LUNucggWmeSLEk7525GQujFGgshITJh8y9pvIHy8ReGQAqcGvgOxCmQX9JOa
         Vm4RUsxu4e0pOWUXes6UHU72miszQZ0vaf30j6gkmCG2Lg+vKBeNkTrHmEPngOiC/G7D
         OLnn1Yttp9UGIb72cJjyu7DPOLB0eFAYa+BbyHMeUME8H5c/DQrjbwg9XlHX3ca+KRPE
         fR3VnwHNCdkmsZ8uLq8GeR/u/TtQy//z4RL93gFu1fZQ7JyUrKcUBjaW4oIz2x4pXZH4
         rBSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=USQyK3bB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id e13si1672374oth.3.2020.11.16.18.55.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 18:55:54 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id d9so19177835qke.8
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 18:55:54 -0800 (PST)
X-Received: by 2002:a37:8305:: with SMTP id f5mr17316880qkd.209.1605581753676;
        Mon, 16 Nov 2020 18:55:53 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r14sm13431270qtu.25.2020.11.16.18.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 18:55:53 -0800 (PST)
Date: Mon, 16 Nov 2020 19:55:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Roman Gushchin <guro@fb.com>, Johannes Weiner <hannes@cmpxchg.org>,
	Andrew Morton <akpm@linux-foundation.org>, cgroups@vger.kernel.org,
	linux-mm@kvack.org, Michal Hocko <mhocko@kernel.org>,
	Vladimir Davydov <vdavydov.dev@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mm: memcg: remove obsolete memcg_has_children()
Message-ID: <20201117025551.GA1103291@ubuntu-m3-large-x86>
References: <20201116055043.20886-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116055043.20886-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=USQyK3bB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 16, 2020 at 06:50:43AM +0100, Lukas Bulwahn wrote:
> Commit 2ef1bf118c40 ("mm: memcg: deprecate the non-hierarchical mode")
> removed the only use of memcg_has_children() in
> mem_cgroup_hierarchy_write() as part of the feature deprecation.
> 
> Hence, since then, make CC=clang W=1 warns:
> 
>   mm/memcontrol.c:3421:20:
>     warning: unused function 'memcg_has_children' [-Wunused-function]
> 
> Simply remove this obsolete unused function.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117025551.GA1103291%40ubuntu-m3-large-x86.
