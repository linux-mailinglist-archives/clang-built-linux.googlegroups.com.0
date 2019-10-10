Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBSHV7HWAKGQEDY354AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA8FD1D63
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 02:26:49 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id 132sf3262247ywo.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 17:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570667208; cv=pass;
        d=google.com; s=arc-20160816;
        b=O40/SyC6fuWVWiv7Sgz8bMpcAd2VII/rCKpPdTKLSbL1d2+NO+8FJop7elppy4lb6x
         1O5XNN1YhyR9YEYK+k2nozLpXjUryKxl4q7yjtOMHfl9jyhl4/0gWSwEjKtrWhSpqgVO
         XsaUZ9KwHLkZATCaHJhuMmjT+HNhkOchk+NETdxMRNMZkZre8WXoLELCzjWEmPriaf/T
         HVAi6tnyV4axfWphoJuEHNKAP1IkcvrwBDRTKnNk66ElE3KvYjsjXvpgHtOyuKVQDiWe
         CQKJnnJ5NBYO8Vl3XRmN4eAvgYbm91mkJ/B/NJf4mW8pLVIgNebVRlMBciyFRjU9lqrP
         +B9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AFwtWMLFMsDLHcnF7w+IkYYQU9xvSQS70NARFJnUBLc=;
        b=XHMyv5KaAf/i+dGT9CyG+XhDzypFbhNe8ExIsPDJeeuXGTR68n6wcaRK4FS01dhKdN
         j8Nxfly/cZtxpKU6NBSI4yAe8cwF2l2snOkpPsuMbgFcT595wuo+jgF2b+ukLnAn6+64
         Nwe8cnAlRA/+hQLj0XhLo11SOtRvxwK/ZD6x7KtkqRzEUmVwaRrXX7Fdv8zM3y8dFVSZ
         ma24UflQ9x5ubG5SRJ6VrSwOcqLxpEzn2roycPBKbksajx/q0ZmRsc1f+tdX1QueoS1g
         1kpx36TSRY3GwH/xNTjCLuXrlFD6/bYCxViTHPKWUSuLAOFeJ9HHsdw24yhUUmy14gFm
         NPDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N5DYis7u;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AFwtWMLFMsDLHcnF7w+IkYYQU9xvSQS70NARFJnUBLc=;
        b=dQtvpY0i+IVct/EUWx23Mk17AeG8k1ZiHWEORdHZzG4Gmh8efTeYkoHVnhpeIw4mgR
         NR5rrejAVYtcHAEfZ1FLjgbVo8w2/BuheEqnBKnv2y5DYj+vfgflNhI/vmjwppPzCsTy
         RNebeClEHkT3x8Ul4mgW6LCBl9hK7s2+yXM+ZLlqYFARIQvSdhCZyRV7UQqptFwsH+I0
         hqlcBhFwZgjhB4uk2WGu5gs/gJhSmzKG4iSabiTojrMNE5okp3MTwZpnA9pzH9UgISNP
         XFChF34cM5Rb3kuKWGVTUFtj9zgJhoWYOipP2GdwwtlxH6MJCM3LXCv7RXggR2Bje4rJ
         fZZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AFwtWMLFMsDLHcnF7w+IkYYQU9xvSQS70NARFJnUBLc=;
        b=bz7OlqiLl3kwFvb5/iAVxtksYrDSWaZ4BXmxtvN+gZxawt3FMRR4aZTj06ksgudULO
         At5yZGVhVZTt+pUWO2aiE0t+uwO7wGI1HblJkzZorHEqroWD/nW4jO+id73pSCS+ULZ7
         RA+gEXkDKp1f8YprZstReWCqthLxhqBnwsTP5ACLprR50NoKVrTmPEg+yMXyc2SqWMBE
         nlcrjuH88uRM2kS5YwyxUTpEsJp5B0M7NQI+nRDnu3Jvls9A5t+K2F9AL+k0RorBSHmI
         nnleq8sOfdEw4/zYuIM6KmkU3OzoW2/SNdvm76X0RbXNdQpvBTQLGjrjKZ21tYALicrF
         u4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AFwtWMLFMsDLHcnF7w+IkYYQU9xvSQS70NARFJnUBLc=;
        b=eBtFI5Dmk7WHg7422KDBcnIvb/p+xlSHMRPchzkFc7lvdSuYRG0gnK+ou8obaS1G0L
         m18xbfc609O/Es43TF/0L7c5XQRjP41BTF3Bi4Bas5/wfVwAq9Zj5QCpJHhRqpd8fZzf
         xg4tDnjpx/r0jdS10jjMXK6/ANDSwtgo8+mkTcz9Pam0X4of3VfGHJY9xvpN9fTQ6hFp
         booybTWue4r0VHKUoEWcQFJ+vj0EqVv+ohZW2uF0V9Mkb6OB0L1+N9g/83ivKQxWfH1Q
         I6OjSDtUkTqfdMy+cUnX7q3ioprIvHK2WKVN7C0jQCZ1pQm3rHv5JWqoDdIpoAzcvPUP
         7EPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkQGT5GeTIk8OxsXWbksk+4eVq3Kxv9kYAEF2MzW5gRW2LvNI1
	LTFaDeLWcTlsChwwfDjCN4c=
X-Google-Smtp-Source: APXvYqyYrILnsYvSNjIHtLJQwjP/9xoD8a5t5dEtqagGbxh7ohpK7M5tl5oo8SbUqNXJwSlk6u7qGA==
X-Received: by 2002:a25:ba84:: with SMTP id s4mr4064515ybg.79.1570667208273;
        Wed, 09 Oct 2019 17:26:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:6ac3:: with SMTP id f186ls366031ywc.8.gmail; Wed, 09 Oct
 2019 17:26:47 -0700 (PDT)
X-Received: by 2002:a0d:dd08:: with SMTP id g8mr5178557ywe.194.1570667207974;
        Wed, 09 Oct 2019 17:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570667207; cv=none;
        d=google.com; s=arc-20160816;
        b=0VmXi4TnO2bKqcXRRXJ00d0bJYoB2HxrCrCYK1ZdZxGdb+/X9x4pbGrEBLkrVcawWn
         G4bYAJge9kvqaeSPWGpB/SPg9mlMSeI4nClFTDtTIDS3pLGRHwZdTQh49kiJe9KUv0fM
         /buECzdbJqmaANSdy+Pu3GOAn0GZL55WEQJyEmrJZ0PzYhZgteGhk322h4anJp8yrBJK
         yu/gVOUaWaR9uSoUTEaSODf0E0YJ84G12MxxrGwumWsRTaNf1aZn1YyodjhzV5D0gQbe
         gulY5JanWGVpLpwhL/0GGESUk92t93UztHG8EOjd8KZc22w6nR0znta1lmldUVB4a8GL
         OxLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hJVRzApWUSHgdNBRH3SUZ0/qd5E2CCfr2UoORKNjRa8=;
        b=km3xndGR/hxDT9pUtfKSUYotFvlKYmxmgr3e98SHsqyZtzrj1Q2oMsfudPnRE58U9I
         mADOSXIkZUF1liPvs9wn5QhdBEONHAJj4ZsafJT0/cGgWc4e4/d095+gSY28kqU1uqme
         Gg7xc0RI4IiNsyuXwIFDh1WWCViCkG8VQ4lTbfqbjsx5Omgq2obrKh0IyDQ4bw61zkgj
         4ZjI2YnMiKay0mQ5QLLdb2DQWsA3VizULj4iNx0oZ/Up5oNsYkzDlFEDSYoa/HABBrpJ
         b9aEk4Dt/WXkKnnyjpYJbs2eBzEnKoQ18H+lfs7IQ9gsEjDpcqvm7ZsDa8nHHahI34Cg
         njng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N5DYis7u;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id p140si425038ywg.4.2019.10.09.17.26.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 17:26:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 201so3946253qkd.13
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 17:26:47 -0700 (PDT)
X-Received: by 2002:a37:4c13:: with SMTP id z19mr6820886qka.449.1570667207415;
 Wed, 09 Oct 2019 17:26:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org> <20191009204134.26960-12-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20191009204134.26960-12-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 9 Oct 2019 17:26:36 -0700
Message-ID: <CAEf4BzZ=-DYoP0yPttx9WWwqZe10q+=nxAer7V_S0WRY47tp9Q@mail.gmail.com>
Subject: Re: [PATCH v4 bpf-next 11/15] libbpf: don't use cxx to test_libpf target
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	ilias.apalodimas@linaro.org, sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N5DYis7u;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Oct 9, 2019 at 1:43 PM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> No need to use C++ for test_libbpf target when libbpf is on C and it
> can be tested with C, after this change the CXXFLAGS in makefiles can
> be avoided, at least in bpf samples, when sysroot is used, passing
> same C/LDFLAGS as for lib.
>
> Add "return 0" in test_libbpf to void warn, but also remove spaces at
> start of the lines to keep same style and avoid warns while apply.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

Thanks for the clean up!

Acked-by: Andrii Nakryiko <andriin@fb.com>

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZ%3D-DYoP0yPttx9WWwqZe10q%2B%3DnxAer7V_S0WRY47tp9Q%40mail.gmail.com.
