Return-Path: <clang-built-linux+bncBCQPF57GUQHBBH6Q3XZQKGQENFEN4EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DA318E920
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 14:29:05 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id v10sf10642073qtk.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 06:29:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584883744; cv=pass;
        d=google.com; s=arc-20160816;
        b=rQ3JYoGlg125IR8ZdVHQi3QDUYf5qS/JRGbCcU1ujwiI8lnETGNz1p4yYaKBv1oj+Y
         s3BIZ4HutrAqqCFME2iRRRZHAWk/libOdsQGffu0CtMr0aqGo6p8dGqNQk0aaGBUf9Hu
         qOnOaU+EJ04IGydYJpCOb6XPtauLTVUN+SD0H4MZe8QTB7YIAanURUax9kFIpSKj3lCe
         ghIW6gSPYNpZGV9jSeP2E+khlel6Qie3t7u2qsp3yCUjiUSReHp/I/ia/u/6qsjnrYJT
         TMC7WVptqnTomM9RQgPxCzHa331E6yu6QpMbmuvyRRZwxnGZw24KWfdcCuzVlJqrgCaj
         8ZuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=EQUKZWgWLJhqfJJdmhI11SDGP7ZdKfQg4tQWC7FDU1w=;
        b=ikivQtMJSpPcq6qNcUOM3dx7UUiWRXCZQzYCsSNQNKHsalAZyu0zbZZVz33cNt3lkq
         9W7uqxYypq+ZovcWGBaSJARisfgNSQxHHjiUA6FC5T/OqykO56VvzbOR0X3uYcU+DJMP
         KbyFKXOcfQ/7QbtI0fInAR8ylTCQ456CS7GI+ZB5XSuLXCyft1JfRZJHhjoUuGGpXYoS
         ksyA7+o9HBhtYHyv4V6wRxtjoLBFylNl7RzI7WvecKkAMAkRbEP666yrEc6SvBuqDeHn
         RfK5O+6y7r6xQFcz0kQowTvjDEyWbUHZjX565iJZFMg5aY5xlPipfwMN0in9pTTfNRfi
         M+/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3hmh3xgkbamu39avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3Hmh3XgkbAMU39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EQUKZWgWLJhqfJJdmhI11SDGP7ZdKfQg4tQWC7FDU1w=;
        b=SXdGdDxJ4ShvA8gHErKYVe5bHh/xc2tKnGwRlPm/gDVJu1faBObu8amdumzrwhbBY1
         xgzRJVaDJ6QFCmiqfap4o/woIQHcrxYHBWISpXvL+8Hf18nN+11aXyALCByABqi2WMl9
         Hm/JrKX5thnJgftr1hRyj51N+7sQr9ixfzQMkDPxaNlvNkOXhvkskHxOgx63bQE32bvq
         C3Q/8Sko9bkDM7b/VGmQp3chr2O1JVQ5hKKHOyDOwMUHkneI+voWYiQROhEn6JJaGABz
         D8l7vdQqXgNWBqqNh2P6tdGs5rWtIVj4bDo4Jv3Lw9jSMwsqA6LGuYYO3Dg4cYMIDs3d
         n4qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EQUKZWgWLJhqfJJdmhI11SDGP7ZdKfQg4tQWC7FDU1w=;
        b=s0xo5Y+bZHuGnHGn/32TZW2OnTfbmt6wJclq6FpEaHaY6iq/Umk0WzlfaoUcBu134p
         gLed+53H6Knlo+3FAw2hb5hiRs0Aicg12b5u9RzUIehlKKWAH0Pjxq94aQDY03uydX5w
         RnV+y9wvifDTNrHxqw4TpoZf96LJ+aT/iLNEfMqEMKbqwPY7quyCsaifftNkMu0pNtIw
         Mhz9ZRjx/68JVvNqijWu25cyyUMAm/a1VgHdd6FmWUbBYK3NWa4vWd11OOSR6twVEz7p
         Iv1fcvfnti3yJGRy2zVW6I2eq9rKiERgXVf8Vt5uiYfOtNgXOyMXDMwM5mXd7wPPbsvi
         E47w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0bxb24WRNfQodab0LHe7eIs9vsG8UWjskeHwXugprLyiowMapc
	xFedveRdM36wnawLuglP7DA=
X-Google-Smtp-Source: ADFU+vtOfHaGnAESnrhfHq85F3AWrHvLnm9LYBpZSj3j8zYLN8kVYVnqYFhimrZjfeVBNXzhBg7oyw==
X-Received: by 2002:a05:6214:1853:: with SMTP id d19mr16962899qvy.90.1584883743855;
        Sun, 22 Mar 2020 06:29:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls5170850qtd.1.gmail; Sun, 22 Mar
 2020 06:29:03 -0700 (PDT)
X-Received: by 2002:ac8:18a4:: with SMTP id s33mr4916863qtj.220.1584883743343;
        Sun, 22 Mar 2020 06:29:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584883743; cv=none;
        d=google.com; s=arc-20160816;
        b=q3cqvMJREgdwoeWyQtH8oRoCDQffvHp0DN6DSzKv6iJ1rk/U6SEIUv2qoTvYF7mYnr
         r6Zxw/W7yZHByYeP253ryYxYGIHi/jF6klkWB7eVIaxtFuHqHHNaUlPsnJi3QBYFZsS4
         OJsZI1D8MKWcN9gG1jwlinJa7J19FIPFfiWkQd0TPD1TLvniqcrFJLR5Ux1qg/pPd93V
         RQfLjZXc5JXLEk0qIKeR7WmCnR59R/xIL0qyD/hHvvu2rCtou7k4LSRjuf4cLZcnWStr
         o3cd4QHZZKZFPUa4hXg5BfoinJgbFuPPYcJbTbPc4XLqys2RICmcsAQcKs1QCud5q4j8
         1p/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=jmLK9Nx0sV4n9spz6FizKEO/UiXLat+guCFQpWcvF0A=;
        b=wOvk1Ut7uZMLKIHATSX5YmHvtFRZWAKzXDh28sMUfttnL3W8B2RsAADNvCWLEAw8VE
         VQv8czF77rJ8528BkEjBU01fFmKexI4kk+/roSmNB9P7T+nur27vjCre4XyqROfIM6AV
         rJeKB2sGeYvp2pZrsWw9S4nzQndN2ARh6ZERqGKZjP0Cj5y2JLJue7cfsVgsJaQo+uQT
         XmHBvFF7elz2RHEyY+Nisg7JtO1JZIW2s6ro2Ud6QPW+3dkNCmw43bbfDOUbIO9Nq12g
         rI0rl5GkAnhdkI8aXnV6JCyHXeKjUIFfYj0UrIa8chIUyvh5Jwb58Ai0jMZBpa6wy8or
         UKMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3hmh3xgkbamu39avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3Hmh3XgkbAMU39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com. [209.85.166.69])
        by gmr-mx.google.com with ESMTPS id d34si756612qte.4.2020.03.22.06.29.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:29:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hmh3xgkbamu39avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) client-ip=209.85.166.69;
Received: by mail-io1-f69.google.com with SMTP id n15so9038012iog.8
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 06:29:03 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6638:398:: with SMTP id y24mr5155770jap.125.1584883742893;
 Sun, 22 Mar 2020 06:29:02 -0700 (PDT)
Date: Sun, 22 Mar 2020 06:29:02 -0700
In-Reply-To: <000000000000277a0405a16bd5c9@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000008172fe05a17180aa@google.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
From: syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>
To: bp@alien8.de, clang-built-linux@googlegroups.com, davem@davemloft.net, 
	dhowells@redhat.com, dvyukov@google.com, hpa@zytor.com, jmattson@google.com, 
	joro@8bytes.org, kuba@kernel.org, kvm@vger.kernel.org, 
	linux-afs@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com, 
	netdev@vger.kernel.org, pbonzini@redhat.com, sean.j.christopherson@intel.com, 
	syzkaller-bugs@googlegroups.com, tglx@linutronix.de, vkuznets@redhat.com, 
	wanpengli@tencent.com, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3hmh3xgkbamu39avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender) smtp.mailfrom=3Hmh3XgkbAMU39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot has bisected this bug to:

commit f71dbf2fb28489a79bde0dca1c8adfb9cdb20a6b
Author: David Howells <dhowells@redhat.com>
Date:   Thu Jan 30 21:50:36 2020 +0000

    rxrpc: Fix insufficient receive notification generation

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1483bb19e00000
start commit:   b74b991f Merge tag 'block-5.6-20200320' of git://git.kerne..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1683bb19e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1283bb19e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6dfa02302d6db985
dashboard link: https://syzkaller.appspot.com/bug?extid=3f29ca2efb056a761e38
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1199c0c5e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15097373e00000

Reported-by: syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com
Fixes: f71dbf2fb284 ("rxrpc: Fix insufficient receive notification generation")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000008172fe05a17180aa%40google.com.
