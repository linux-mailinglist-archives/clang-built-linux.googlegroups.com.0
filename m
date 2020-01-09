Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBDMA3XYAKGQEHJW3FUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F07135C14
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 16:00:30 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id p2sf1026957wma.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 07:00:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578582030; cv=pass;
        d=google.com; s=arc-20160816;
        b=MPAkTBP9VMiutLvOlVUds8/T8/fi1Pcoz3dTRU6mDpMtvtGArzKmvw/RA05Au5TKBh
         b8c79n6KS1RAmRy1zzUJDdCOSTRl84WcbQObpPbcObC9pPBe3yGYHEm4h6nfOdJV/duk
         YwC4erWUzhGg2gV7oFcEhiAm2SGRufKjocpbsuO18EzgjXBR/ndB0EsEPJFk2Kfp5vk4
         FSsRrAMZq8jZ/mBdmIwxi9+MGGs3iA8TknWi3FGzh5ZHBPmbgD/Lha/QDIqrzwwt9uy7
         w7KkmOZD4R9MYMbU7no0MMU9/82Cwo2goH4MbrPsVgzQqKx6KwEsNUkTvJcE/BCGI93A
         +lBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oU31OGtMAZXT494f0kb5DPQWIFzbwaW80UPpuCnWZSc=;
        b=u3cHq805o69pM0zpY8xTBuiARRd+Wa7lUVB1HA/HMYmJrLj/HDqzJO1JJ2Mn7pP4uZ
         G27YttVIXJP7ydBZrSRJnzVXfEhhTa5aIiZSdlixHeqhRc+seEBo5nZeNpppbx6E2HEd
         0l4jcbKbt7w9OL7SBDpEgHPOlEh1s95HA8b4G3rKQ9XpHU1L7WzTQQQFyNqZbf47nVKd
         VVe7kXy0FU80mW/WZvLRSGZAGbwCn3DNZHw0CA9QljcDcMoKHw7hb8Ut+Jjs5T3y7W8m
         yuZYEvRpau6Aaeaso0X1sOb/ESVkLGR+S2liScieBq3ROITAwkKTIaNVDl6yijRDsdeV
         4Fdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nllva3ag;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oU31OGtMAZXT494f0kb5DPQWIFzbwaW80UPpuCnWZSc=;
        b=P/ZwJLLaenkMkr8km2HARnjbRVMedJN+5VNmkQ41megNBtuJDMXZ1UL04dwUv+dNu4
         PRWzH6KMN6EOMpZDn9z3HU5oQo2D4LJpwyymZssaL/i9OFCHdwRlqVLKB1ZdI4vpLW0c
         yFqh7HxCaeuSd5lGycjur5x7AAGTyTW2oLGQ5hn1fX4pzquc63Abz7IeDzmx/kOVVZV2
         Mn7D1I56ZumU8W6Ot43wG+zGcZ1dpwbrQ6hmnp3XuWouCB9QsTWiFTUOk5stvBjwNCy5
         8X0vqWXINs9s3xD54UD8hftpKNOh/H7/xAasrKMfbjXQ0WwLW8FFaMNNSoaICBaJDEL+
         pVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oU31OGtMAZXT494f0kb5DPQWIFzbwaW80UPpuCnWZSc=;
        b=MzzOIO8pPj5ZehOW+Hg5V5doXY0DrXM1wBXO1wjLyRdLfycIMaIIF2BIVXKoMMP+Wx
         1JBNsU3a79lv/5Puep3hj1vyiRsCvSJ64kuC8KnWkLyvWKqP8aArpNxIChXGowA9nJGH
         I915FbC8OTgtMo5Lf20zNFVS7Hq5rRSvTUlgIhinumyImxuMBZvLrOoi2G9w9O+NS1Gb
         OoqFEfbp7oCr9O97/QPapY7BuCo5eXuqZuhA9N1wSYyNOcmgyL+RGQf1wbz2t+SvariN
         dps/uMlVi49lhPShZQBhB10EMe9j3tUzUACx8To5ZBTEBKdNLUL8/gplfCTtrDFSVkWj
         JXww==
X-Gm-Message-State: APjAAAVSA3AR4XBelFwQ+SfPMFBoJuH5gXRMvo4vv9aOkwLpv0EVnx8z
	hjwUgmnlHWO6ko+XqjDtD5I=
X-Google-Smtp-Source: APXvYqxQXfNCWfPOgIUvmKe7RBRZ0X+E40oWufR58QSbN2EaV1hgIEKhafsl7RD38jYm2mg86Hjnpw==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr5601464wmc.173.1578582029936;
        Thu, 09 Jan 2020 07:00:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c452:: with SMTP id l18ls935184wmi.1.canary-gmail; Thu,
 09 Jan 2020 07:00:29 -0800 (PST)
X-Received: by 2002:a05:600c:228f:: with SMTP id 15mr5640985wmf.56.1578582029402;
        Thu, 09 Jan 2020 07:00:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578582029; cv=none;
        d=google.com; s=arc-20160816;
        b=int5xZyJUmY0hPGj3Y7qyCOdMGl9PRTPQIGvUTI6Pp/OBb8hpDxNy7Lt25UnpjG6E3
         FeAJZTc3GKorq/ixCl4R9e5MfgHtXNuGUPwDHrB/59ATWw2T8pt4OYv0ql37ZWO/xtwn
         o9Qy8bqCuFkNbAFLpK4ivwa21h/qOw6urQs9EYGn3Curwidd6iUdfVqD697cgLb+XPJb
         OYVaL+GutqImgL0vsHc28TkV2VdNd4S9oZ2N1Dkk/MDu0MAeexJRKSsDsN2a8DIAWN+w
         y9sy9JK72+jQMwMRLzvzMVpIS5zZBSCrVFF4pAW3dufCrnUFMDtYC0H+jwG5njxTvO3w
         Uj1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a1ljvtvD/oYPKowV14fGJuODj4lRgn6C/mFxe1R+QQ4=;
        b=bmusS0t/aKmfXdweTL32dSLKOcFmhJXBhJfOopDTSBLkImvkqRA7se5MbHthGBJiQF
         v3P/JAb4rLaIi36kioRTrgNA8fVwIS7aO3M8wuZfrBwZuSpry0DKmbnfgqNH8kjSOu7s
         ndTvx4qBBeQSvyzn1qQuL5LqSBWRVXVlAhgkOpbbI4rZuSzdrWlzrPb7LLUqojYWpCQu
         k8HurhyZ11wiPjYGM5VbAZW8sF9pNBTKLL/bCgOpV+T2SUgxPUKmrH2mLD495Fmnly9P
         3gwi06aXn9X7D9coLPKfTRY+wS6FojvFxddphGow/bBoiBqKm19n83qUK0B1a+W+lcc0
         1lYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nllva3ag;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j188si86785wma.2.2020.01.09.07.00.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 07:00:29 -0800 (PST)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id y17so7750031wrh.5
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 07:00:29 -0800 (PST)
X-Received: by 2002:adf:ef03:: with SMTP id e3mr11889244wro.216.1578582028689;
 Thu, 09 Jan 2020 07:00:28 -0800 (PST)
MIME-Version: 1.0
References: <201912270058.OEFKY6hD%lkp@intel.com>
In-Reply-To: <201912270058.OEFKY6hD%lkp@intel.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jan 2020 16:00:17 +0100
Message-ID: <CAG_fn=UaSzB_5ubfrrZV9w0TnaSDqh2dBe=mnwynC+a0SrE1Jw@mail.gmail.com>
Subject: Re: [PATCH RFC v4 19/42] kmsan: x86/asm: softirq: add KMSAN IRQ entry hooks
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nllva3ag;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

> >> kernel/softirq.c:606:3: error: implicit declaration of function 'kmsan_context_enter' [-Werror,-Wimplicit-function-declaration]
>                    kmsan_context_enter();
>                    ^
>    kernel/softirq.c:606:3: note: did you mean 'kmsan_softirq_enter'?
>    include/linux/kmsan.h:322:20: note: 'kmsan_softirq_enter' declared here
>    static inline void kmsan_softirq_enter(void) {}
>                       ^
> >> kernel/softirq.c:608:3: error: implicit declaration of function 'kmsan_context_exit' [-Werror,-Wimplicit-function-declaration]
>                    kmsan_context_exit();
>                    ^
>    kernel/softirq.c:608:3: note: did you mean 'kmsan_context_enter'?
>    kernel/softirq.c:606:3: note: 'kmsan_context_enter' declared here
>                    kmsan_context_enter();
>                    ^
>    2 errors generated.

Will be fixed in v5.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG_fn%3DUaSzB_5ubfrrZV9w0TnaSDqh2dBe%3DmnwynC%2Ba0SrE1Jw%40mail.gmail.com.
