Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBKNGVXYQKGQEK2EWXBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AA7148F52
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 21:27:23 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id f22sf1857005qka.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 12:27:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579897642; cv=pass;
        d=google.com; s=arc-20160816;
        b=NWdOz/7iBGdCtkJE1lnZm2K4d07UoIHMuzhuoqCvD3taMtxg+PrcXurrFZ0//565FI
         DQEabBcKBHwYSHoetka6McFSTeOq06HwPIHn4HAQ9kF5etV/K3UuRTbQEfDe+HpYP+6d
         A820EpdagU3KxIHME0KF2Unzek734UnV5+lN4VkCDtPW0+DwAIN77o7joGveUrPPBbhs
         QWxZ7uCH8Bc2umLHyXyDd8TvFuuamrW8482TlTPOMfygy+63H/CoBc25ipX0oPLuOJoS
         5dgN2i9MIteMPr2hOzVxq+VUAGDrqZ706ij7Pf4Gw/wqVlTSRgzpF6y3ZNsA1dVrM3WB
         AYFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=19vEKM2BYZzr28ij0K6E0hpyJH9hcQBx3Ru+9ciDzsM=;
        b=qnR2Z6lMgFPSUYtP7x/CRXa06R+Nq5ZqdF8/fZ/ANBl98HS2neo1/TrQorfIW7I5mv
         jphIfdNkud54/5+wqfbpCn/YITyvp/clw1stb6UqvSZpklQ4dbwU/PvBPm30EBvAFHhP
         zgEiDur+yr0z8VP66g109qVjy0El8Lgu09wL4TnxTElmzdecTJb0NI8mvlqS487I3blY
         NnR/cimnX8AFyAVkalxj8dB6qrwYoY6B2jIRCHhBnaIABGezOyiV23FyEMJPLP7do64/
         Jy8MSSJbY9fS0r7gDc2G/boUMqEsf0q/m8UDuqOsbeBCKUf9/VNrO0fTi5oF/uU9K2Ty
         d98g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VtC3QH2A;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=19vEKM2BYZzr28ij0K6E0hpyJH9hcQBx3Ru+9ciDzsM=;
        b=JoNFND/rYDkruy51y7V0oueoA+9bC6X7TlTM/SCLMMmV9PzGC8axZh48ZGeo2DZZyP
         inCn3ZHMgyHfcaksDdWAt3DuZzIdki4I0fsjm4aEgz4S6HmrAUTWzCJnj8ynMXpIgeVy
         HBDIRTQta29N9qm9hV1T7bTW04HfuibnijDuwFRtJxinKAwLbH/0U+ei96ULr+oYRGXI
         4lcUnXR4RsD3COqPOWcE+g8R69BM6U+DKxfPg269IVEdJI/vCNGvLJvz8kf+Q4AQ3OKq
         PU6FF6S+MZEDqowZPFqWP3eeRofRxghGTRBf/UfJBUiJthdqvw/C75PLSxQr7/JwuNo4
         us1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=19vEKM2BYZzr28ij0K6E0hpyJH9hcQBx3Ru+9ciDzsM=;
        b=Dd/3xzPKiDTCXHVxEN7iFls7sQJV58yPedmgj4SfX+W2BK/W0nJUG2xfCxxOqAqYWg
         Wp2AGv4d2ccehsMkFL0J4xfVz/nQkQJbUhVVFp0I6sui+GUJIeNOxXqj8d7gvgTCLayR
         15fdNDQk586WWCCNBBFR5Sjwf2nEFbAxQzysCOM0XJg+AzoGiFezBpI1EZ9IuEP2XEji
         sD6S7yCxVWV0jCdN0ZBOfOaScmb2aLb/Dn4iA/b/+zLT96vGXz8c8F+cUc6AY0hIvYiZ
         BTiOQCIYCmn1Nv1Qt2oeMg5NI8d0ZV/mPlgzwIopyzVpsS7lIYhLi+ciuLyCt//sPw9H
         iVBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1l077WKTbLaotkBdYaBvnZuEwP1R+owWBaxbNjyKPbd7gXyme
	APxzdjrv4uL5auREjpD4fhA=
X-Google-Smtp-Source: APXvYqx6ZXuy7FZvUYkuWeNBicaNvgDv8OVkSZ/lLt4GZflTDYH/CGcvQHCwxmN+UbOW1n4Jt1oNvg==
X-Received: by 2002:a05:6214:433:: with SMTP id a19mr4815667qvy.221.1579897642107;
        Fri, 24 Jan 2020 12:27:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:58a:: with SMTP id 132ls1336193qkf.7.gmail; Fri, 24 Jan
 2020 12:27:21 -0800 (PST)
X-Received: by 2002:a05:620a:992:: with SMTP id x18mr4707977qkx.327.1579897641340;
        Fri, 24 Jan 2020 12:27:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579897641; cv=none;
        d=google.com; s=arc-20160816;
        b=LDjiMSOb5x5veX8K4PUUT+Q8piTYb93r3FUg3w8hyNx5wBBcywwk1JrA2ArjX2SeL+
         pr7n6nmi7W0wXZfmmoh8G+AUgISEuyHCoIb9sneE+o9RtzPvNQukIgTx4PJT14mqmxoO
         ewvYcKd9oTvWn9UAQWAdtM5FzpTnC2ObajHFFqiDrM3Y1FsqZuXlNjI5fBz5A26HXA3k
         Y5grwP/HsOqdFqQIujOkcrp2k0RddwjpWCoxBC1bhcJKNRyTiI7UxwxsRfjNz8jGO8kI
         bU930FqyOWDDJ+pxIkDOgi0/I9kDQ0Z+XCzJLvpTiLV9QMQ1WEkAT+Nfm8CUewweZIvw
         BWxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=H15LMV9AuYNnjULinWAgJ88WsJhezhYMh9Bsu7PdI0g=;
        b=aXlMxIREXp85Xxwmo4qqzVf+CcSiwTar7OHGEWbK7g0WMKu8AGS5AfaRfaHwcAhImH
         NKYXvthLQdM3VdSZeBvu404hkGNE7Xc8ddPSW4YYB+IjaYshODWMxKux4p3hJxXCT5VH
         exjfxrvP/ebZX58aRXcib2FVRh8M8wWrPcNPPM47+C/TeZmAW/0hors3sojH3vt50UP9
         EuQVFBiO6IW5gftxnbHmxZosRKdUXwI2U9PvPFo3HzRBfaBOd/+hMwHS3dRy25KciWpz
         0CgLTGz8TXh7nglBWPbd1c2oFWosJYG75W1jy6d78pFIDKLmIfOfDL+9g1s3vkGGN6f6
         aEoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VtC3QH2A;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id 134si225806qkd.2.2020.01.24.12.27.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 12:27:21 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-wKpu5T5GPdmgI0pKgZE8cg-1; Fri, 24 Jan 2020 15:27:16 -0500
Received: by mail-lf1-f69.google.com with SMTP id f26so609435lfh.15
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jan 2020 12:27:16 -0800 (PST)
X-Received: by 2002:ac2:515b:: with SMTP id q27mr2115405lfd.119.1579897633633;
        Fri, 24 Jan 2020 12:27:13 -0800 (PST)
X-Received: by 2002:ac2:515b:: with SMTP id q27mr2115388lfd.119.1579897633361;
        Fri, 24 Jan 2020 12:27:13 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id q26sm3308753lfp.85.2020.01.24.12.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2020 12:27:12 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 476A5180073; Fri, 24 Jan 2020 21:27:11 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>, linux-kselftest@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Cc: shuah@kernel.org, ast@kernel.org, daniel@iogearbox.net, kafai@fb.com, songliubraving@fb.com, yhs@fb.com, andriin@fb.com, john.fastabend@gmail.com, Palmer Dabbelt <palmerdabbelt@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kernel-team@android.com,
    Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [PATCH] selftests/bpf: Elide a check for LLVM versions that can't compile it
In-Reply-To: <20200124180839.185837-1-palmerdabbelt@google.com>
References: <20200124180839.185837-1-palmerdabbelt@google.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 24 Jan 2020 21:27:11 +0100
Message-ID: <87ftg4fvmo.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: wKpu5T5GPdmgI0pKgZE8cg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VtC3QH2A;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

Palmer Dabbelt <palmerdabbelt@google.com> writes:

> The current stable LLVM BPF backend fails to compile the BPF selftests
> due to a compiler bug.  The bug has been fixed in trunk, but that fix
> hasn't landed in the binary packages I'm using yet (Fedora arm64).
> Without this workaround the tests don't compile for me.
>
> This patch triggers a preprocessor warning on LLVM versions that
> definitely have the bug.  The test may be conservative (ie, I'm not sure
> if 9.1 will have the fix), but it should at least make the current set
> of stable releases work together.
>
> See https://reviews.llvm.org/D69438 for more information on the fix.  I
> obtained the workaround from
> https://lore.kernel.org/linux-kselftest/aed8eda7-df20-069b-ea14-f06628984566@gmail.com/T/
>
> Fixes: 20a9ad2e7136 ("selftests/bpf: add CO-RE relocs array tests")
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

Having to depend on the latest trunk llvm to compile the selftests is
definitely unfortunate. I believe there are some tests that won't work
at all without trunk llvm (the fentry/fexit stuff comes to mind;
although I'm not sure if they'll fail to compile, just fail to run?).
Could we extend this type of checking to any such case?

-Toke

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ftg4fvmo.fsf%40toke.dk.
