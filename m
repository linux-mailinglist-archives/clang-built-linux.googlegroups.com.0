Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBIHBQ3WAKGQECFARPKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1BFB5A44
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 06:20:50 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id m25sf3955925pfa.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 21:20:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568780448; cv=pass;
        d=google.com; s=arc-20160816;
        b=iNBIQvZjePaLgAlVtobHQVuCiEMubyCOoTfTVs6crqRF91hpm2xPkwIBgm12L/B3Nq
         979rZxmxpwjNW0vNedJQbmmhzje9ld62Ofe7Z8tEm1kvuCUGZEF6Q/G7WYWXrVl+vxyU
         oNPAKM3gtKGJGH2vgJfjf2D7zPI/mug3ESHbfNcAOuERsVX1KXtxPCdqE7/5Y85sUjkc
         8zL8+VKg7IdtecTE5GDPXFrxLliES32DOL8HN9VZpvxmpi4PSwIJBwdcgW9o4nsP9XIT
         qxo5PDVLeSopJFk6hKYYMMG3ujc6SACW6VV/tKL1UvLo7Yud5FRvS9Cp6AgNFm95PP8c
         kl+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=y0e3cqPHaUzlyKgWEyQXgI0UaJ64kVgyYNmQasR1HRo=;
        b=u0mWvymDZvKIWOrisnqW5HtRoNxdGBFWd6iM21cub9O/mQ/6dqM8AevQihQsQIkiDR
         RhvahtTeDSzWBZreH+p8hh1bA0PdRcRDg66kNulW4WnTf7WD5DemLDb0npw/BfIwxHQ3
         f39e1DGIIAI6KbZQwT6puIKmc9VuOFok8//nwkaJYg8fyflojvRng9psPtlkv+GCh7TY
         dCF+nlxgtttuuNUKEZufjYSI/DTZeaE/RdE9BelMNUTjjx+zRfRkVxYJNlJR6XpqKevu
         cP2q32cnsCZqSs9vdvDzvGWMWGDsZm3Gr1vwKkCv/REZdW3GSAcKepc/cRgMjXwGAMen
         x13g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFDuX1PX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y0e3cqPHaUzlyKgWEyQXgI0UaJ64kVgyYNmQasR1HRo=;
        b=VeWLCjzUM8GvOcru4VMN4u4SHKfJswReb0ffEokoXxfMS+THposHdKF2zrvyRsQaLp
         ZG1lPJDEsTtM6oXFHT9ZbLhxEa1JaZESsVf80ezeXtCRE3SrwWYqCjwfgHRWwdrWQANA
         T5QrNYl0GPoNFgMr2UbQflVCiz+9oke1het3kW3mLVKkRnHLLVsIA3NvLKMD96b0Jlzn
         aBGZdqhTtwabcNqkQV/4cLodJdTr454PQEeOtdiS1u+sv3XOHKsuOFHmYtbUDnfIgsga
         +ZJz5zXu474HpOCxgG03jzV6za0GNpgbTBjtkYJzpkltHg0Dnjhl2O1b9XxEwnycMTUM
         nALg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y0e3cqPHaUzlyKgWEyQXgI0UaJ64kVgyYNmQasR1HRo=;
        b=Vw17uM33TgcZtyL7/cRCBJUH23UR6sS6ai/0klvBf+G0yAYZwYfTWg1X5Y9q2PaNby
         XZnN3HT1S7EHh4XQEysIief6bQq5C6zzXhvcwnfj3dQi9D1QVknW3ikynfrMUigJpj5P
         a51XgOAhtpjPAYw+jnXXr4vXB9mRSgzAFvAcNkGFSZd5qIW30Hdqqm4csyMzVhGSg5cn
         5ZxnTg1FdYq8CzH7IBHDDttkIwrzGcpL1bQzH2NnyVuy10GZY9kUX8t5a6dWjjCx3yxz
         VbuYA69r4fGQ91Ou2JhTNavtIa952cCsCiPe5ft1jS7OEVBUcyyH6ALr5mmvAXBUhrEL
         4YQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y0e3cqPHaUzlyKgWEyQXgI0UaJ64kVgyYNmQasR1HRo=;
        b=V2HHKpYNhwigj4sNV0JQXEFudWgOkJiUCQfH1jFUPPfJ5mpKaGkYkvx0C1+rkGKVol
         1B8NfAmFEJtG9xB5u1r4Wr5SC+lRof3ZwzC+LqHJ1FnykVPRhAFJ76yxgA7WmHT+8KRw
         tvLNZ4PQiQMhIWIFHBBJ+DayXWm8zcweiUOM2aIIF8CaGwrNAwG0DaQ/5VOvSUrQInWj
         5aEI4p/LDj0DyKr4iuTHxT9Tj/I3MyMgFmZu2oexyGMRihhCeRPSxX9zW8Se8rVHKwra
         fbhTe+7jGV8cAdluBMFPcPsdWXkg8QB634cYGU5rLH3s03BB7nFcSkDc4A0NRJuPpTVW
         EzDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbm7ZnH0zaYQO5Mj5hVX/aKHlSuHNptu7YeTVDrIXpYVUQ8BJJ
	l3eU9SB1HW9yj9404upusbU=
X-Google-Smtp-Source: APXvYqzvyJ9eIGl3+h8REFvdk0k2YhNqOpuhbsSN7LArT763U7pF55sky03mc2fdZM+rJzw7LcgK2w==
X-Received: by 2002:a17:90a:8901:: with SMTP id u1mr1723632pjn.70.1568780448792;
        Tue, 17 Sep 2019 21:20:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d14e:: with SMTP id t14ls311073pjw.1.canary-gmail;
 Tue, 17 Sep 2019 21:20:48 -0700 (PDT)
X-Received: by 2002:a17:902:760a:: with SMTP id k10mr2099880pll.183.1568780448443;
        Tue, 17 Sep 2019 21:20:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568780448; cv=none;
        d=google.com; s=arc-20160816;
        b=0SpPT5QasTseub0jjDMoRU9I+qne3v9sggq3lpkJoWQENTHN7thrfnS41eviMXLZnB
         +MDFN0BrGJEFWyEB3DyZDqfeq27aU6kTQfzrDvfbUr8UFkwj1PmDwtH5LQn52/+cJk2z
         zTsMTIKUgEwn7MFCwatuZN+ih2mILxv0hd9un0xP+aBj81vTtgW2ifczVAuUKYoT6fl/
         TPhHsZqIt/KaPW66kwLm+X8AkVExaXfMHInV2KVx6MZLUDH8gsVCYC2vHTdeYwZfK+Zv
         E+/Avux4Tuz4GXC1eK4E5lVKAT7oX7X81IRBF6WMIszPlPIPW1qfklUjOuIHbJFD6DPe
         Eadg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YPRk8Ltt/rxBY02wM0hyQQPeWRaW6k6EkP3BDo16FyQ=;
        b=b8ZjaG+EZz7gixamd5XzmNiXTc3WqOHVr01ZBHpMClH5PCTHUrMMBD5VrKfyrU9sF0
         5Lq0vxiUbaEAw+G2R5o7oBOkBL14wd9UxXJE/5WpbATMBX8+XkUP2JpBJky7Uiq+dstV
         zkuS2/7NVOGinjdIaehj1TNO2l5xAR98eWW+xbLaH3rRoa8IJINJZnJBtToSkkqk6Sm1
         whcZUHs5ySEP8Qsdl9rf/b6Dc3sDnFXgWV+wy+KLaP4lW38HC5NxxEIw8PADMiIdTbh7
         NZxzpC2cKjYfhLRdlEVUzQmew2zPZXmO28d4bDgxOez+dOSOu3QzKw9/ehl1+YymUjAx
         YhSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFDuX1PX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id br8si513186pjb.3.2019.09.17.21.20.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 21:20:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id g16so7250917qto.9
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 21:20:48 -0700 (PDT)
X-Received: by 2002:ac8:c01:: with SMTP id k1mr2214859qti.59.1568780446767;
 Tue, 17 Sep 2019 21:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-11-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-11-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 21:20:35 -0700
Message-ID: <CAEf4BzYzorwyZdmy=2vwuvmACOJoCY5c0EGzDA3n48FXZs1FYQ@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 10/14] samples: bpf: makefile: use target CC
 environment for HDR_PROBE
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KFDuX1PX;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> No need in hacking HOSTCC to be cross-compiler any more, so drop
> this trick and use target CC for HDR_PROBE.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>


[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYzorwyZdmy%3D2vwuvmACOJoCY5c0EGzDA3n48FXZs1FYQ%40mail.gmail.com.
