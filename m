Return-Path: <clang-built-linux+bncBCQPF57GUQHBBCG352HQMGQEZBRJZ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B50FF4A8243
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Feb 2022 11:25:13 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id n8-20020a4abd08000000b002eabaaab571sf1411168oop.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Feb 2022 02:25:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643883912; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoHsrcTwH4sRJ2jWwEeh8yT/ESNpwqDv+ZkdOzlwfZUXQI+kYhOoJLruWDVUJer70a
         tVuHvQS9iVoZS0Pjd5Ijs/vA4Pg+evw4ego51kRPSXF3zwOAeij6jFDYtlDWEJmkfvW6
         y28laziMTmvrwVJJaUrRK9NwhnVbZilkM3G1DoCarufIKGBbEWPit9K26IgEH8KJN/E1
         Bt7n5c8JW4lNlojtLdjiIAHe3G0rd19dGnxFv1YKn1SlYhEh6EdK61dMc/33YPp+4dka
         buDVjvGxBW7hDpcCjenNWpqGGhYglKEWUHCSb7D/Vor16Dao285Um9HQBiecdQmisgck
         /BUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=8va4ufeEpFgx3h4qj/p5dqkzPFIiuZ3RweDgFAdvge4=;
        b=UqWadvNVO8EFuJrUuVXgPaP+boe1lQ2vKDLWgJfxTj3bJxuOAUX9wOKrHykAz9JVDe
         e3B8xLhtRH6DcxLB9qdvDURV5zpSUY23ogVTkgoCe2j/aCqlPsUDvOpVXVdF7P/3FryE
         9bjJZVck8HzWF2p0anZGtA5hcxQJBN4lGWWH8dN+iDKm2V27PbCICwA51J/KCiPn0aPk
         J2eGcG4/CmAHjcztjrCRaD6bOFHjPeTr6O4gxptWWUL5uzEH+ePpNiP7mao2kXbKIqIG
         dWUyfFKxTnUHssBvK4tWQyD974ehdZb6Dt3MdBx/nMayneWDZbnBjprp75zg7pSHCssg
         +KAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3h637yqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3h637YQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8va4ufeEpFgx3h4qj/p5dqkzPFIiuZ3RweDgFAdvge4=;
        b=c7iijRodrCdXV0gzbPQacS+hjhqAx5yORkkAb9M2aNfxQM6KpONyY18qDOQorNXkrW
         VWY2ouTD40XZjVZuaWKlr233ufMpNah0DA49E+HF918UPutDQ7mT+xNWEbC8nW+xiP+8
         TJZuIexrmYC7FA+zrOM5lJG0rcXf9TWbYDz5jwZSeZMJgfPWaEvQMwg6dpJVXrz+EjwV
         gmXdCvq1tTEFxPtfdP4jI7WA8i98Jo9fHbsRmp13bY2IFlrmsn0Ki5HfJZmc47r1Qymd
         mmtVw1hxs9NrGSoaT2D2nIOlgCkVr7F1PHkeXaH/lXn0YuUabC+/STNkqI8vSq7Yuoi3
         0Z3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8va4ufeEpFgx3h4qj/p5dqkzPFIiuZ3RweDgFAdvge4=;
        b=Yi/IJPkgjB309N2Bw9f1Ha4VkKmbrHLJyMIpwLslkdSwO9nP6V1OIZIFj/x7OqLXGt
         VS2wsCgJDTlUUo5Qat9a1h+PdMc2RRMelnNkLnjf2uv06VDUaTpwPPDveucPKcAZEl3c
         NVaFI4allYKSf7tiOne8yxWAatvRIxv1SFrpmPJzZSW8pev+9TNzJzj2zysDAgDVOTsD
         QcUJY1++8Ocnn3OrganzP/kiwPzamJZ9W+V8IoXtpT24aBf3mVRNldmH2u2RUP2wb/fQ
         zsLS7id9mmEfmUZ4hFAx+13/nhtdWeNP4nuCBb3tjptl4dZUZJM5VZvtM0XeiDM7Sgaj
         DLZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KcwkNLSCE2EMTzeRZfbdfhNiPcplxBBH/psz5G1+RBY8sMjb/
	DZ3hZDxrGVgj2uLWXvz6msk=
X-Google-Smtp-Source: ABdhPJzEOoQM8PCjYCpVmDUI/7Bvg++azpIQHXxcuSikiFum1UcwvcDdZ9ilJ8DgbH6wyubDfLvcZA==
X-Received: by 2002:aca:4bcf:: with SMTP id y198mr6984359oia.144.1643883912411;
        Thu, 03 Feb 2022 02:25:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:211a:: with SMTP id r26ls10558287oiw.1.gmail; Thu,
 03 Feb 2022 02:25:12 -0800 (PST)
X-Received: by 2002:a05:6808:1247:: with SMTP id o7mr6489066oiv.75.1643883912009;
        Thu, 03 Feb 2022 02:25:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643883912; cv=none;
        d=google.com; s=arc-20160816;
        b=BUUnAmPV8rVvE6HrYw6y6AKNDIU8X22aMsFqErxlmQA2OQGH8esFkHLf40OJj/H++f
         KBwNQ8hlXClievNiOhQu2pWaNogUPgxfpUG6rFOgH2AIHJzUa3tOufNb9NGkH3M/O8zo
         6zMeQZA8lWJQF1hazLO4BAlaja+cPIwQ3zOqgDxQ3Q6L6+HVq6+v9IhJcJ2rJeseCtYs
         i09pGEUkW67sBBz2ecFwm5F8UwfsLBZIbwJKP7c2rJ9VbfjHQg4KvJwM4imdOALWubqL
         1Rwnzv+4JBqvj8mz2kC7zZWDy02kPk8YKPFJUm4RtNSlekQOQgB3GlB9g041sVCemqqK
         Z1mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=Rxhq5+VXSIrIwj7a/GsrEywPOO2yQbABshUuuSgeFDs=;
        b=S8gBFZpm3RSgdJ/EfbOCL1gOYx6KOPO9hI9E5FM073Hf6sRYhznJSp/Jm79jwNAv56
         PvFudYazDtV592zr4QS/vMtQWo/KbPsVjnIUKCUyfYWsXmiql7Un59g9x+ry1d9IZNk2
         /ihOZy11DFRT9mKdobrLWD+eA7uRJqIs+F7s/GfHXdORFR4KJtsQbqH+wqp/PAlgzdAM
         BObGoiQcTysmIKW2501L2hs2cwKX/LxQnpGyXe1tifdIwR/55M9NoH0rBScMfwsZu+wL
         G2ENyz2rpSqj/IMkzSAnO7MgljJeJ+8hgvOXQVzvPzZ+fGyen++uYH1Jp/+gMBZOEW0k
         P8GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3h637yqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3h637YQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com. [209.85.166.70])
        by gmr-mx.google.com with ESMTPS id x21si1660857ooq.1.2022.02.03.02.25.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 02:25:11 -0800 (PST)
Received-SPF: pass (google.com: domain of 3h637yqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) client-ip=209.85.166.70;
Received: by mail-io1-f70.google.com with SMTP id n13-20020a056602340d00b006361f2312deso1584829ioz.9
        for <clang-built-linux@googlegroups.com>; Thu, 03 Feb 2022 02:25:11 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a6b:f218:: with SMTP id q24mr17682264ioh.55.1643883911669;
 Thu, 03 Feb 2022 02:25:11 -0800 (PST)
Date: Thu, 03 Feb 2022 02:25:11 -0800
In-Reply-To: <00000000000079a24b05d714d69f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000009b6eaa05d71a8c06@google.com>
Subject: Re: [syzbot] general protection fault in btf_decl_tag_resolve
From: syzbot <syzbot+53619be9444215e785ed@syzkaller.appspotmail.com>
To: andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, 
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, nathan@kernel.org, 
	ndesaulniers@google.com, netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3h637yqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender) smtp.mailfrom=3h637YQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

commit b5ea834dde6b6e7f75e51d5f66dac8cd7c97b5ef
Author: Yonghong Song <yhs@fb.com>
Date:   Tue Sep 14 22:30:15 2021 +0000

    bpf: Support for new btf kind BTF_KIND_TAG

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12183484700000
start commit:   b7892f7d5cb2 tools: Ignore errors from `which' when search..
git tree:       bpf
final oops:     https://syzkaller.appspot.com/x/report.txt?x=11183484700000
console output: https://syzkaller.appspot.com/x/log.txt?x=16183484700000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5044676c290190f2
dashboard link: https://syzkaller.appspot.com/bug?extid=53619be9444215e785ed
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16454914700000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16ceb884700000

Reported-by: syzbot+53619be9444215e785ed@syzkaller.appspotmail.com
Fixes: b5ea834dde6b ("bpf: Support for new btf kind BTF_KIND_TAG")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000009b6eaa05d71a8c06%40google.com.
