Return-Path: <clang-built-linux+bncBDZ27RFZWEMBBHHS4CGAMGQEZW4EU4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 798264579C2
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Nov 2021 00:54:05 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id u8-20020a05620a454800b00468482aac5dsf9149402qkp.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Nov 2021 15:54:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637366044; cv=pass;
        d=google.com; s=arc-20160816;
        b=JcUnCrEACi48RRv1iAyuIta7SxfDCRiaF9Tw1aHGwL65XRsuJme6VFTV/GphRQoJXN
         nS7nLraj503fpFIGiFQ2JqpbVCWy1h6XVsZtPCNk4Gj6LRtive8ttto1f+qYLT9Gg39M
         GlO47s0RhN8cRt7BzzChO8PP5hFC8JM+nu0ztn2MgiBZITR1CQFRlc/cOhAJ08iUXdG1
         w2ZfSZQX34SqZkHln3NefWUmAi5u/icGdeP9mm0fbwL8MxseQ9hXdzJRrLGFns+TGj1d
         Uyeen3/e6wL6yFMOy1IyXOg6ZeunTea0xHNFI60R1QvwOFbqKIjhC899fy+JAhpsJeJg
         XRTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=y/Gtu9MmqxOYvSJN8Q7obsXN6/iYc8FsHhgBfv3wHqo=;
        b=MsLbm3LJdxsIK8Z2g2cvprx/kVUTnk+bVGuBqKXlnvGgfQiWDW8M01uGKoOCLqbFJa
         JJ5wy8aZq6oVwM7BOFdGQirvbs87PMQHD1bOSLUMPd7tU1SfgBCbVDRCaGqG6GYqMcEU
         187fw5M2TtTMzAyDue3ce4GIIw7GbPjb1SGx9QWHwQyWinlH4JQ1P8hKJtLSse4MVcNs
         VKODSlBoaDZonG8kW31KgzTghXgdAYPtj3A3mt1wAYQ09LuNJx+IGvgzhL4mApx9Plkc
         0fF+num3H8z8s6Wmd0YhvonKp9470cc7BbnI6i3GPFchUNS9E+xJ5zfL7tCQDsh21COR
         W0AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Wo4FMzv2;
       spf=pass (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=abijimenez869@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/Gtu9MmqxOYvSJN8Q7obsXN6/iYc8FsHhgBfv3wHqo=;
        b=IiCUlPiNdk9l3z5YMW2vguKZWR9sHl/RLQlJF0x/z+F77ZKXB9y15fx/4sPQlUKmJY
         S3B5diB1ofJetnFe4BFn+q5ktZJawQu90KPZAy8MkXy/0oYOtYrrEgVAwZ2yUw4OtvC0
         stU7G+Pd7sLR1F5VKqMI+s4dsRQXVs7qaLx6PHHiTFvwDn99sjjWa5iHZ8zJ6qcpKd2x
         A5gfFkqFkdJp16X8ZwDBxfdkcR4TX4TXLLUyKmKT1+7T2GH9M8GOyrgIpD5FaPmp52+m
         xkupdgFVSraFVrsLJQwQob/Y8INwrIMzZ4vyZkXLPX9JJmDJ0LtFOrqxLzniVyf7criB
         wz6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y/Gtu9MmqxOYvSJN8Q7obsXN6/iYc8FsHhgBfv3wHqo=;
        b=o1Fh4DAJ7wqEnA92xOoHMawRa1th5N4skLVijvKfO8CFXQNJL37N5Csa1x5U47mrc0
         D62UL36or/iZVoNg9oiRJyJ7vZter9ClozZ/mj5TLhbjZlJD9Jq9XyC4p3OtGpnezP0Z
         w/DKwy7J4Jg6BTQrpJQUhO5cWG+fgTKXVlAF3V/3wufE44jW9RHikhj9R4xP9cxL3TH1
         zXTso6aOS3tXTRVoGndd8IOV7G/975ZY2bRdaGnOFLkCb6CxgrHkw9/aWypYfJ6irD7P
         QHLnT0Rwkn1nSmlxn8LsxVaNBH72B6Z1uVIBCG97RaP1u1E0BtsB5Hld+tgC9LwbsKJe
         S79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y/Gtu9MmqxOYvSJN8Q7obsXN6/iYc8FsHhgBfv3wHqo=;
        b=6xSu8n9MVNmwpsqWG4TIldk5zSgNhbfvIteYNuPs6HyDKxlQNqwAyo7ngN7yBzkeEB
         yQoGp49UpbMIWJYFwMAti4TCiMY46yPtnAHYKhffBAR5i8x5+OY596Y8pViuesoT9fvD
         LVWQZymwP/VsKieb10eLkKUWAQW8Lu3TIl4qsdqb4dmJGM8MlQyraF8sQsC2nLp6ON+V
         WJaxJFZXCn/GW/DksaeccrM2OEdw5MotHXLFJDyIkf7gw1yGapHERq6JNdJtvjRHZr9W
         Jbrz4InK5+DWIFylQ0FVF/GHKoP3GF8fPUvV+1piXcz8m3mTKyMryZEp+MAtS2SKizbH
         TLwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+bbC669cDMhU1DJgt9N+sLGgnGBkp883hk5xISYGNp8r7qhBU
	+MyGOLXD4fm6eTh0OVe1+LM=
X-Google-Smtp-Source: ABdhPJySUYTZjb9cmbaD50AbUnExdITnqzvJwicr63a5nmxndbo4YxLbahZVTX6Ojm8cuLHj/fhjAg==
X-Received: by 2002:a05:622a:287:: with SMTP id z7mr10560822qtw.223.1637366044571;
        Fri, 19 Nov 2021 15:54:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1866:: with SMTP id eh6ls474779qvb.1.gmail; Fri, 19
 Nov 2021 15:54:04 -0800 (PST)
X-Received: by 2002:a05:6214:5287:: with SMTP id kj7mr79440748qvb.9.1637366044166;
        Fri, 19 Nov 2021 15:54:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637366044; cv=none;
        d=google.com; s=arc-20160816;
        b=WnpExuSQwRHA6mMuEsV08Jw0HMB4AaG7JNKQfdMWaTeVHcpJPmKCbqG5+y4RCJ1GHt
         w05jYVEOU2Np/I98Cag2Hb0YsmZtr9DfxYbPZpLVs1IL6g3c2xWBf5ig6X5d91i5gpVB
         ULkIsFmjpiObSVgl4Kj0h/DxajV/COyFujOulgD4kosbekTDyojI54bSHPCsA7PQpona
         QZul00EqL+QBVMeEJOyAaKIep1cb63Cau37P6QYhtNDdxz7OXczmL6F3AiZVS/7n80FH
         dFPqDdCKS8enJw8NED2dKGEDM4Cz0p9ZB3J/B5VUprKpnkYBGNeD5zQL79sPBiZ+G0Jl
         kjyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=lmDlz8biOtb1lQcIT7RGpSmmNRNEa0PZ3lwzKl4u9ZQ=;
        b=l1/VVmeMszpMleh6u7BWd2FM+vbnvpfMOmm45SMz/zB5nQCgUlcIcQG5za3aaz9Tkz
         JQTm7AO97o7DQhXhUIPIRssX06xzlDXCiOLvaE0IkV/JrEGTBq7NYk+ZM9lBi8xBPdSE
         zJimEf7AFxSJ9Ma/0GrarXY/Rwjal2J1GMhXBe4b3NoZg38HRkOWU+0CP4pgPZEYNHHt
         LIPfVDuC5tLRJGbA0oTrjckFTMAVQos5kwuDVIpM+rlXJ0hqMH7ygXTFmlUVoBGSP2Tl
         k3l9WvJ8+oDG1kGxZsaCbxo1oTvjoqrAP7pE/Dem99SfAiaiHDjADciL4YyVz7ah8DF9
         TP3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Wo4FMzv2;
       spf=pass (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=abijimenez869@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id n20si121017qtl.1.2021.11.19.15.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Nov 2021 15:54:04 -0800 (PST)
Received-SPF: pass (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id fv9-20020a17090b0e8900b001a6a5ab1392so10083718pjb.1
        for <clang-built-linux@googlegroups.com>; Fri, 19 Nov 2021 15:54:04 -0800 (PST)
X-Received: by 2002:a17:90a:8049:: with SMTP id e9mr4465833pjw.229.1637366043482;
 Fri, 19 Nov 2021 15:54:03 -0800 (PST)
MIME-Version: 1.0
From: Abi Jimenez <abijimenez869@gmail.com>
Date: Fri, 19 Nov 2021 17:53:51 -0600
Message-ID: <CA+_J1YrcVBqVugJDSzfycvncX-okm+o9OwO_PMBhZBoLrRZc0g@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] mm/vmalloc: Add __alloc_size attributes for better
 bounds checking
To: Kees Cook <keescook@chromium.org>
Cc: akpm@linux-foundation.org, apw@canonical.com, cl@linux.com, 
	clang-built-linux@googlegroups.com, danielmicay@gmail.com, dennis@kernel.org, 
	dwaipayanray1@gmail.com, iamjoonsoo.kim@lge.com, joe@perches.com, 
	linux-hardening@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, lukas.bulwahn@gmail.com, 
	masahiroy@kernel.org, michal.lkml@markovi.net, nathan@kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, ojeda@kernel.org, penberg@kernel.org, 
	rientjes@google.com, tj@kernel.org, vbabka@suse.cz
Content-Type: multipart/alternative; boundary="000000000000639dc605d12cfd6b"
X-Original-Sender: abijimenez869@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Wo4FMzv2;       spf=pass
 (google.com: domain of abijimenez869@gmail.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=abijimenez869@gmail.com;       dmarc=pass
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

--000000000000639dc605d12cfd6b
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2B_J1YrcVBqVugJDSzfycvncX-okm%2Bo9OwO_PMBhZBoLrRZc0g%40mail.gmail.com.

--000000000000639dc605d12cfd6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2B_J1YrcVBqVugJDSzfycvncX-okm%2Bo9OwO_PMBhZ=
BoLrRZc0g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2B_J1YrcVBqVugJDSzfycvncX-ok=
m%2Bo9OwO_PMBhZBoLrRZc0g%40mail.gmail.com</a>.<br />

--000000000000639dc605d12cfd6b--
