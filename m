Return-Path: <clang-built-linux+bncBCQPF57GUQHBBW556H5QKGQEYCF72IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D860284B67
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 14:11:08 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id u64sf12165315ybb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Oct 2020 05:11:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601986267; cv=pass;
        d=google.com; s=arc-20160816;
        b=lKqSo3W8L+SL1e4Ucx/E8h3umLoxbyuL8ajnvEKhIk783OMEUtgBjm+ZSpXF5bfVpX
         ycU80e2Yf3iU/4TzsrDJohIOuDdpL8eZ/3DPe/OqlV4G4e/1ZFlAF7rGpqURx5eGGLBw
         nCBNhv9cTSWY/CBwDFHpfUrlu6CcXhtQgar/2mpCFAyeTnwsA4MeNKSsaBlPJwTKQbXX
         2TjdAOKFu3nPhiVMDGYHM/C4/sKD1krD2w0Dy+H5NTIXfde4F5+Bp9kOkFOC0mQJdE6x
         A9L/Ij/4TvZeEcJi/KTy2ySrHIjat9OI3JBw4Ofo47ezWE89IqDDDob9T55FKGmtT/u0
         eHAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=T7QXlO9Fl23F8Wjk26uOJnBMD/MrX/YEtWLrQjuUlFY=;
        b=zVWPmBgO1KlQfkF8ndtGy0t7qtkTuOHW0QMHJaU1dD24uB/tlb73rJHEh3uqaNhoLV
         HHFZGGYsYI0SbXnZ9l3Hf6k59hwtd4IgJgYKZbh3ZQ7vPziNIy01PWabiZ8ry8VG/So2
         pOAD5/tVD11YeDdZ+XaGLmr3LQrvaRAYHzuXH82RBfgYBIFHnmIK7ofQHcwvm1aGHT74
         jvfAt0uZcgIw6d8SyV3lAdqWUC5K0v63NbjWt12VBnj+firpY1QDqvtIfRmclQpmvF+E
         qHYUcDsbNBQoEuNtwBdesd0mrvez+KnITKg8PBhySKdXgkQOMjWxiRip/aWXopEMPNaQ
         lutg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 32l58xwkbais7dezp00t6p44xs.v33v0t97t6r328t28.r31@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.80 as permitted sender) smtp.mailfrom=32l58XwkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T7QXlO9Fl23F8Wjk26uOJnBMD/MrX/YEtWLrQjuUlFY=;
        b=MzcsuQto+ZtOEBsPktLF5j/ciWXoCYMkgCWHXPYFwwxWkmPH/ZjMLEAD0exHw2eH5F
         VQwy0pv1F0DUSyD1+42JWgkIJucxFf9kvgY59j6CNjBVepnoFyWrCF0XZI0pfeyEWQpN
         EdeNuQjrvJJWobhajXR9ai26LtIXHp/FEb1FBY7YxUWQ6ctW98R1DERdHzy5S/797X5l
         O46Pic/KLH7QjKWVbYlVSCf+g4OW42cYDcC1xLkf3k0AalOPpvpVTgqiJN8mIGeX96FC
         gJloGwUoBd1wXNDzwHGVAMRMN88WN5uCgPUjiYQ4ICCy1/XPxeg2JYP2jt+1lLjfb3RH
         KjkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T7QXlO9Fl23F8Wjk26uOJnBMD/MrX/YEtWLrQjuUlFY=;
        b=A+HOU2bVxyjY8Q7t7MEfWXwaWuvlRtS0EreeWcdiLwbMZLg99ioirvp6xb8EtC1c42
         JhkVCoBuKRiFq28L7+LFQb1Tm6wAxys7E6u97CXw5nPEyP7LWcuDCYi0s4kxq66qS4/Q
         oVXS2hAyTHtzUNxOs3Xy/y3GeWEE+C8emv5g/aToM59FaV0G6vTrR11tR59/P0TADdtv
         SDFHogttzb05o04E2zLocve4aO0mWgsIaS8ix0KODeVKT3XoCg1y6IOrGrUHk4qcDmyQ
         Q5kGuhyrnxDRT1r7ztWl8fYUM5RSrtUP72+vAaTYWp4nd7WyikDjtw3WYE/UN8vHVpc7
         Qu5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Q8y0Px9mfzCktt/QzccAmr6zgkmzKMJud4j9jKKsyM3/rTFZ6
	oP6OMrbHX63puNM447esOxg=
X-Google-Smtp-Source: ABdhPJyH0FRabI+ZYOmj0hoRnM8lJxJwyMeo7h/PoQ7oYD51w3hsxsbImN4mgcPu4ipDrOHcwOgzXw==
X-Received: by 2002:a25:344c:: with SMTP id b73mr6083463yba.127.1601986267377;
        Tue, 06 Oct 2020 05:11:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d394:: with SMTP id e142ls1148566ybf.10.gmail; Tue, 06
 Oct 2020 05:11:06 -0700 (PDT)
X-Received: by 2002:a25:cd05:: with SMTP id d5mr6067405ybf.212.1601986266784;
        Tue, 06 Oct 2020 05:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601986266; cv=none;
        d=google.com; s=arc-20160816;
        b=H8L0UgzE1VDeaqdmRwoAmImXgCgEgDlXtwo+GTY/z6P71CcDEW3phmMhS0YCqLUttO
         w+yL6mN1/ZtKMoggDxUucGdAzZqJQMyx3vS0uPIJ2Vmq9QzeOXe0lfNroScSFhvnW6h5
         0JyPxMfkgDVyZ+NLeIYaM0PZeMSJGSZS4kzx2aSy29Cc/4Vz74f+P7J02jO/ETekm3UZ
         YrAoHt2G+RN8WINRqbNbPJwnDCDcrQ5IfjHbYqO1Q953gLo6CSxm3AAdl1dC/3jfZXNn
         QLsZqdUBeKtFQ78D/rTJnJ6adYd3YDCqumbQWcss81mX6ijCaWzGP/+XRRzOBJwI96UZ
         3i4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=EhCOsm/XwK9KhdukuQOyPPhHwiTYn0fSo6dMXBzIANg=;
        b=hqd/1UCxFtm4yfpemyWFunxZTJQkuyqvyNUTIaRQCR+SqBT6Ya0V4mhM2Da56QK9YM
         QtOQ9WbXT6rw5AeaScOQZXkglvbl8wVw3rkPpfaO+UlR1sYGP7aFQ9yOm++iyWP98Ifh
         ZhsWaGU9cIrcJp4ZB9mUMWwk4M4VXVIaJ0mioRkfkug8luxLwx5fgDZR07qbkf5iS6XX
         sJOGPg6uDq4WO/CDcesAuuXwAmGl9+DlW40q0n2xmQvkTuFvNEnaSB8n08fhONQb8sg+
         9Rasn6RgYcIJ+nMS2i8JAVugOKgr6gaqFrpLFnYOWo1LISlREugKv1zIo8g1SYoERSvd
         GKgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 32l58xwkbais7dezp00t6p44xs.v33v0t97t6r328t28.r31@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.80 as permitted sender) smtp.mailfrom=32l58XwkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f80.google.com (mail-io1-f80.google.com. [209.85.166.80])
        by gmr-mx.google.com with ESMTPS id s7si224411ybk.3.2020.10.06.05.11.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 05:11:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32l58xwkbais7dezp00t6p44xs.v33v0t97t6r328t28.r31@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.80 as permitted sender) client-ip=209.85.166.80;
Received: by mail-io1-f80.google.com with SMTP id i1so7019602iom.1
        for <clang-built-linux@googlegroups.com>; Tue, 06 Oct 2020 05:11:06 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:9fcc:: with SMTP id z73mr3339261ilk.234.1601986266354;
 Tue, 06 Oct 2020 05:11:06 -0700 (PDT)
Date: Tue, 06 Oct 2020 05:11:06 -0700
In-Reply-To: <0000000000005f92b905b0fc1a5d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000575a2e05b0ff7e79@google.com>
Subject: Re: WARNING in ieee80211_check_rate_mask
From: syzbot <syzbot+be0e03ca215b06199629@syzkaller.appspotmail.com>
To: blogic@openwrt.org, clang-built-linux@googlegroups.com, 
	coreteam@netfilter.org, davem@davemloft.net, johannes@sipsolutions.net, 
	kaber@trash.net, kadlec@blackhole.kfki.hu, kuba@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-wireless@vger.kernel.org, 
	matthias.bgg@gmail.com, natechancellor@gmail.com, nbd@openwrt.org, 
	ndesaulniers@google.com, nelson.chang@mediatek.com, netdev@vger.kernel.org, 
	netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 32l58xwkbais7dezp00t6p44xs.v33v0t97t6r328t28.r31@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.80 as permitted sender) smtp.mailfrom=32l58XwkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
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

syzbot has bisected this issue to:

commit 983e1a6c95abf8058d26149a928578b720c77bce
Author: Nelson Chang <nelson.chang@mediatek.com>
Date:   Thu Oct 6 11:44:02 2016 +0000

    net: ethernet: mediatek: get hw lro capability by the chip id instead of by the dtsi

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1639e0d0500000
start commit:   c2568c8c Merge branch 'net-Constify-struct-genl_small_ops'
git tree:       net-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1539e0d0500000
console output: https://syzkaller.appspot.com/x/log.txt?x=1139e0d0500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1e6c5266df853ae
dashboard link: https://syzkaller.appspot.com/bug?extid=be0e03ca215b06199629
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1790e83b900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=111a5bc7900000

Reported-by: syzbot+be0e03ca215b06199629@syzkaller.appspotmail.com
Fixes: 983e1a6c95ab ("net: ethernet: mediatek: get hw lro capability by the chip id instead of by the dtsi")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000575a2e05b0ff7e79%40google.com.
