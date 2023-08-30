Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHM5X2TQMGQE64FE7WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A7B78DBEA
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Aug 2023 20:46:55 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id d2e1a72fcca58-68a3d6ce105sf5681353b3a.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Aug 2023 11:46:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693421214; cv=pass;
        d=google.com; s=arc-20160816;
        b=bimYCqfiASeKGZo9/4y/97sk9QzzmXP92s9eXyIkk3aGxBSXsopYUjxVfkhddIaO+P
         6+kwA0FRSx4HljtBTRVMFunk41w0rI81B2Fp2AYDqYcYfHdsRbsNCI+qFo2cfiPRxjCS
         0Dm8jzwrvlzg4RmOud1rYusH1oLdSVzbh2ifYcIzBGk/weTLcJB9BdMez+4803jy+Eri
         VcNpQrqDnijo/CqHAOYQSYu5euhwE9/DQhW7CBeZrIAcUvggaz6z7IK1/50WNGxYslS7
         WEL7SJL6CDIXeSjydelzSjRGbn4NsY3GEalPOz7UdHXISazh8ajosYj7KDUcy1uxgAxI
         EzRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=FXDgAsfR1wp/9fLU/OX7Ou043AfKXVgWh0ov3jaYGBE=;
        fh=bb+Ywpjw3j35M3FAmkWLS92Bl+GwZcFOBixDfm5mKpg=;
        b=z5/9enu+suP7LlMMYSEKQ0O6pzPKLSQcZQk2v0wwanKSpfHNFbhC1POH1Ik5ixyqju
         9tVf3/QxS3xcIEO/PY4iaksNIGk74uz9L+ruJYtmmNjQNXMNQQTVMwHNrzC8mttMPJCu
         dOzSpDTz4vXQA7gmNAE69R372pLXn6yVHrYQGr0LsZPW5QLK/z21JfChjT7fVJQk1irx
         YaVFR6xVLS2oKcqlhnXPm+C80CsNOiyOcEzBQeLGCoJWGCph/N+foenLoFKFyQL/YSLf
         XFhkofli5ydARLaouc23XlDP19syDHKtWeudGyYs1wMuvTBj55SOxRRXGD9PwLTMuqVM
         bN4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=qY4VA9E3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1693421214; x=1694026014; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FXDgAsfR1wp/9fLU/OX7Ou043AfKXVgWh0ov3jaYGBE=;
        b=QJrZ8bBUvj6pUBlUF53s0R/6OklWDLtJ97jLEZovylR6sJX0qKzsuqqiJ01YQgPQPZ
         KaI8Ma4HizQYHujrgjqXeYGccHGyvGc2FGuWCHoTsqZGSenRtlIe+yTId69UgnDeAf5+
         MjB1EpgSSICpKfH622tqkZLOh1uFR4dtq0WHNR/hvzYQruZNhrDeJLV1fLobtbqgoSNv
         skVHtmXe/WKLguC7HtRSsGztoLBcYpb7oDXVuXNPrDgCZxaevXSkXtTZ2zCGgwCT61gu
         /XryclpA+XAzwl3qVh17r25Osw8tX/d3zYub2UO4j0+GXyQKwQc+g2bb4ovhlueNU9xf
         wwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693421214; x=1694026014;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FXDgAsfR1wp/9fLU/OX7Ou043AfKXVgWh0ov3jaYGBE=;
        b=DPkUC8InKK8DyetqEAZipXQt7a2oTDgcpQhJIdlOSS2vCbJvlQVJlJjx3ZErI5ZYnj
         8DrBoKUlRIcVq7DMVSsEIzDMqsMqWccUzSkHY6+L4QUFAvF6Y7lW77CSsJREEdn+j930
         XXq1DsqezurzODYxhbcAGFqH85VUePLari0vCneJ/sblRIXrSUFvKNP4ZoHtKqPcYsEl
         H0wfzHJqcHRGBtiVf5Vs+KF4n5m4CrKajT9SPCH7qzeMGQqMLH87d8L/6HQdBHYBwzGw
         N/UR350pyg1bcif53yKPooCk12HGLZdS0DC/x1+qKhANPrkXo7jTMPapZIymCRg7YbGx
         MpkA==
X-Gm-Message-State: AOJu0Yxd26IjvH7DA3q5JCka6IvoldDMdCiBnq5y1qe9z/cCtJi066zD
	7B0uRg1Z2U5W8pH9mIgXU3E=
X-Google-Smtp-Source: AGHT+IELN/TQkg029y7uK2Ir75rrgK24IPH+/RIGCuG6CJnouZAd/iYT6t3X0idwvJbEzOat5Pt0Ig==
X-Received: by 2002:a05:6a20:978f:b0:12f:c61e:7cac with SMTP id hx15-20020a056a20978f00b0012fc61e7cacmr2944107pzc.31.1693421213834;
        Wed, 30 Aug 2023 11:46:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9832:0:b0:68a:3df5:b027 with SMTP id q18-20020aa79832000000b0068a3df5b027ls4894786pfl.1.-pod-prod-04-us;
 Wed, 30 Aug 2023 11:46:52 -0700 (PDT)
X-Received: by 2002:a05:6a00:3909:b0:68a:45a1:c0f2 with SMTP id fh9-20020a056a00390900b0068a45a1c0f2mr3188848pfb.34.1693421212696;
        Wed, 30 Aug 2023 11:46:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693421212; cv=none;
        d=google.com; s=arc-20160816;
        b=fZ4VWlLE1iE5NkUtww6VmnCApI26HqP7+CBcU+N1rA2TzyG7oOHmiQ5ut3yfKHQfvo
         ZR3/P8bkUiRtm54PNNbS3Ll5v0i8iu7dC+Z1nHe9JkFa5F2hO2afvtL+q2qyRrsS7ewL
         Bk/rUb47/1JGUq7U3YDxYWvhvbX6cJCNUxEq8OJ746ooFI0Os1NsaBdg6z5UX31rO3fr
         EaFi5RKXjtczcnwntDOSjnRI6FnbIZDwHW2MtuniwKVvPU7q0ooZQQmlSugiP7/D4njE
         2Adpf9/sW2t3SDKoO4DVFPX6eXpcO1CASfnusWfkCzaHz38ADADG1tPfo3B9Bz5AHkFg
         NujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=jtmtDXgxLWntTBR5Adpk/86nj2JIFqfGbY1o79Rm09E=;
        fh=bb+Ywpjw3j35M3FAmkWLS92Bl+GwZcFOBixDfm5mKpg=;
        b=0obTEnp2bAaj8xIxOyuEGNPZBuBAUtC+3KEy7EBtYbWxZv9+MGZ/Lbw0w4h/reyKB0
         SvEEGcE2pGlUKsnlqvEdQTdcOMo0J6Gukhxg5puY7MUcyUoQad+DQ/44G0RHLoHELfdS
         kbf1yOsNRLh1VeW+14sAamoTaB4t6gHDswRJLeJ8R619c+eM2LpWHmDMkLUCN2VLkYDg
         OIxAh2S/dgzGEypnAEQp7hcbzNQqNyA1xDhnqqWBMeOSQUwZ0HcJ3FhCtm6XiSUvy3xp
         7KV0mSzb7u747hpGfS9wwcK33QSeZuITEydJKdlbxpt8iyeb/bl/zQ7qAClPlA2kNZ85
         +pAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=qY4VA9E3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com. [2607:f8b0:4864:20::831])
        by gmr-mx.google.com with ESMTPS id t18-20020a056a00139200b0068a53045bdesi1483645pfg.4.2023.08.30.11.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 11:46:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::831 as permitted sender) client-ip=2607:f8b0:4864:20::831;
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-41243a67b62so108801cf.2
        for <clang-built-linux@googlegroups.com>; Wed, 30 Aug 2023 11:46:52 -0700 (PDT)
X-Received: by 2002:a0c:e287:0:b0:63d:3bea:f663 with SMTP id
 r7-20020a0ce287000000b0063d3beaf663mr626995qvl.47.1693421211669; Wed, 30 Aug
 2023 11:46:51 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Aug 2023 11:46:39 -0700
Message-ID: <CAKwvOdk_GVOdT==9=X=+s=xaD4PrvwXWoKePNJJ5WRmYHkrTqg@mail.gmail.com>
Subject: RFC: blocking posts to the older mailing list
To: clang-built-linux <llvm@lists.linux.dev>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20221208 header.b=qY4VA9E3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::831
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

Hi folks,
We established the newer mailing list <llvm@lists.linux.dev> a few
years ago with archives available at https://lore.kernel.org/llvm/.

This is in preference to our previous mailing list
<clang-built-linux@googlegroups.com> with archives available at
https://groups.google.com/g/clang-built-linux.

These can both be found on our homepage
<https://clangbuiltlinux.github.io/>.  While it was our intent to
deprecate the old list (and still is), we have not yet taken any
action to actually block new posts on the old one.

RFC but my plan is to change the following settings on the old google group:
1. Who can post: anyone on the web -> group owners
2. Who can contact group owners: anyone on the web -> group members
3. Message moderation: no moderation -> moderate all
4. New member restrictions: no restrictions -> new members cannot post
5. Rejected message notification: off -> on
6. Include default rejected message response: unchecked -> checked
with link to new ML as message

Then update our homepage to note that the archive for the old ML is
explicitly deprecated.

I think that will prevent further confusion, and sorry that I haven't
taken these steps sooner!

Thoughts?

Another outstanding issue is that it doesn't seem like there's
available tools for exporting the old google groups archive, AFAIK.  I
would love to be corrected though.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_GVOdT%3D%3D9%3DX%3D%2Bs%3DxaD4PrvwXWoKePNJJ5WRmYHkrTqg%40mail.gmail.com.
