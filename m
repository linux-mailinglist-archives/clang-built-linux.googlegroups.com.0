Return-Path: <clang-built-linux+bncBCQPF57GUQHBBMPTV6EAMGQEPIKX3BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B66C43E173C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 16:46:10 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id e145-20020a2550970000b029056eb288352csf6457306ybb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 07:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628174769; cv=pass;
        d=google.com; s=arc-20160816;
        b=c8HmSzualpQlRdBqMgINBsNrTYhy9ADotEq1/P2NjoG/WFT+KbxdgT7bhaDUt/HsJC
         e8R/GbaK/qzJUJGuaKowivCGX5Fjpu7F+GgaHy5060L8q+FBLfSUll+cuTumg0cGWm/x
         IPSAhkZcF0E03QCvfCsufT6sJgI1yd5/foohwSFUWnscRNLGSKUukmpazwcBL298SRYV
         IIDKOk9pyC4kVYfkMmPuS1u+HOQe1yr0Wgp/AqxZT4+q6NNh4VdUijs4wSvLdQzJMXzO
         isQpDF9xlLHfCyH/41cHI47DYUr+uCJNXPXLbq1xEcIWU+kPXrOMR0ethGqjT5TpewVM
         WSbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=OW8IM+t/jawKets6NMCVqyzaAYEEKfvwQEhPP3wIYb4=;
        b=kJidokvscxcY3x7x8BbPj2edRCeYRZWfU2ogH5z6I+Bo1pfaZgCKnnRnwGjHxne6Wf
         ecXAtFrqgOlO1v125TfrcihATU4/hTg+z+YAu++EUhi69zlThTw6nilOSwenO5XjL5t0
         YbCYNZlw9TiW78QcUagGi3aTLpnZsmAiOrS1H2Gv/MBQmsm6Lai45uppRPtwLdHv/omO
         y70x9JXMn12fMkBDLbQ53HBO4Qz8eHZB86JX/nVr6WcetypkEcLKiQsx2x9oyockWmtX
         EpzsX7ev0JYsgeS2b+LC+CNO0oXckCW3OGx/LyuL8+ReXf6BYiKW+/ujVd8BuvZWfLyH
         axog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3spklyqkbaoevbcndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3sPkLYQkbAOEVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OW8IM+t/jawKets6NMCVqyzaAYEEKfvwQEhPP3wIYb4=;
        b=TosuXXTlfKqIfqfLwpXTPn23LRoYmBb1VkUwtFIbda9cmxD0FnTHVLaCOwWYzeVsBp
         aHdg7nTd+2rZlQ6yb2SpHb9BDVdn50bUNoiYfk3nd2lBDLWUWB+odw9Ss4+ZW06u1TTy
         r0kcklFIXHRchcUShyrvVDGl445aBU1ycLs1gGsPjCZl+Bl+VOJHVJu43ehCvpAIWgii
         fQ5+Rz9C+gob/qFfBhNCD704Fy6cN5+hR0AVkLCx+R1mpKcGOodhvTWccx+f0smYrpxt
         vdH/N12/56BZvEOvQ0bwlP42wJVbI6fJ/HozPDtMzQMgQ2/L8B3rMV3IY7ekUEXays8o
         U3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OW8IM+t/jawKets6NMCVqyzaAYEEKfvwQEhPP3wIYb4=;
        b=m6mvLQuT5Hgurncf/8m66k/5K+ftOBxslcZtWtSHx0or5FIe8WOBgXy57SofPCqz82
         BE3L/Zt7zbCha4p6QRv/f+sk6TfjhP861EZne1eBhAuj113ct0zDH1HNs3OgMKp1I+Kx
         xJSMt5ooa4Th2Hmn6rzp4caci6lkfDEQ5smCtGMr2Bwv30kNosb+m+MFfTuanY9YqelS
         sUsvmrM6PfL5tKcTSPovFfExSoAdNHG+ame/qNmrMHKtf9Dc8k3jVQ5EkjHbuDuoC0fc
         dlBYkOPYIncUad5KPbrf2U21qbA+qDv7+WCyLU8LDLdsKfnxoF8RKR6Pl8IzhV1cq1/U
         /pEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IDqwVp1tC0tk7dVsMRar5koooIoExlBvt37Pu7p1+1f+HvgEo
	qFULCX8FEF4Jlup/U1kOaK8=
X-Google-Smtp-Source: ABdhPJxLqsLS0BHUFIUux8VuOknSMI0cCoEmVN8PSqBLBwVxma5uDYpd0m7uMRbsK7sU9NIXFINS4A==
X-Received: by 2002:a25:be48:: with SMTP id d8mr6478790ybm.521.1628174769811;
        Thu, 05 Aug 2021 07:46:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:d4a:: with SMTP id f10ls2784971ybr.6.gmail; Thu, 05 Aug
 2021 07:46:09 -0700 (PDT)
X-Received: by 2002:a25:cc0c:: with SMTP id l12mr6886457ybf.152.1628174769348;
        Thu, 05 Aug 2021 07:46:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628174769; cv=none;
        d=google.com; s=arc-20160816;
        b=F2cMHkCt+TyMatfgpUGvMu/jHWeWTsR7VOzHSCJGN0Qmqg422P3KQ+oB2heSyHlE5+
         6vutn8cxIcykck8ttmYh4nSA+xXZZ3Bf3kKoSvHFpDWPPncKfF5yITGvjQUDoKo/Ru25
         pMQTAH1rhHWZVu+mxkCsFjEDNzl6gH8FO0FobKU/uxx8H1rYtg9W0DCw9vwZF61xKM0H
         pTalmvc8v1HHqaft+nq55R8TFj4vWpQXGyNxetlty1eBeZ4J7KWuYqgqVqP+MiBv/UxS
         HvDaEYi01HoIyviv1zzHb52h7B4MIMcDOI2oNOQ0vgZulpuzih6xBCxlF6CkeA5S3vl0
         eGEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=M+CG0V/JI/8dSO9GWQyntpikCmP0PrauSUlgadFbtcw=;
        b=DhDP5xJAXx6pJLIXMAA8jj/vbuiAJfAL40AYoWACHEdIEAZJ0fKpK/ITZ0yOPnd3MW
         J1xXSkdGv/NykEtYID5mgzBQEiFD5/RAppAG3tXn1swWcLr80hw8CC/5kW3Qi1lMOhmi
         DqqBjjTKD5DJP9tzk/dh5nfMxNqExnwj+w8fYgsqIMlOBM3trHr5raMB3A4tbT0L+sJE
         sXUBgjS6vsQIVSj1dDbZ9EGb3fFmzEg1by+swaBXO2UZ+JyaaY3Q9fcERQUUT8Ygq5pM
         ICdf+dFjARkUKP784ESq/U0WFApCB+SsxCv1CVpFdsDgYx9lIcN6PFD6bpcXH0IiEd+J
         bUoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3spklyqkbaoevbcndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3sPkLYQkbAOEVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com. [209.85.166.69])
        by gmr-mx.google.com with ESMTPS id u17si401923ybc.5.2021.08.05.07.46.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 07:46:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3spklyqkbaoevbcndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) client-ip=209.85.166.69;
Received: by mail-io1-f69.google.com with SMTP id r10-20020a6b8f0a0000b0290586484c519fso598124iod.0
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 07:46:09 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a02:8807:: with SMTP id r7mr197145jai.35.1628174768557;
 Thu, 05 Aug 2021 07:46:08 -0700 (PDT)
Date: Thu, 05 Aug 2021 07:46:08 -0700
In-Reply-To: <1e291320-3ad3-aa21-77c6-c71da9d32fdb@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000b6692805c8d0fae6@google.com>
Subject: Re: [syzbot] INFO: task hung in ext4_fill_super
From: syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, paskripkin@gmail.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3spklyqkbaoevbcndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender) smtp.mailfrom=3sPkLYQkbAOEVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com

Tested on:

commit:         251a1524 Merge tag 'scsi-fixes' of git://git.kernel.or..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=166c8f6532dd88df
dashboard link: https://syzkaller.appspot.com/bug?extid=c9ff4822a62eee994ea3
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.1
patch:          https://syzkaller.appspot.com/x/patch.diff?x=160a3301300000

Note: testing is done by a robot and is best-effort only.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000b6692805c8d0fae6%40google.com.
