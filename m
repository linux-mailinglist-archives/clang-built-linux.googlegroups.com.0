Return-Path: <clang-built-linux+bncBCYYJNMLYYMRB5H2XTUQKGQESQRVWLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id D906B6BEF0
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 17:23:33 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id 77sf18960882ywp.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 08:23:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563377012; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wyt3ENQd/BzyfP09953w6piNTaFAzZs1KFGZJdkRb4+lT3pVInMac3QWJ4XV7WF7ak
         uQdezorztrzoLHpJIMwKalxjyQnb9slq27yZJzGiYS3JGIO+9dTLsWEmsAbvKVY1gqd0
         m1zl6usrHHyaA8l1a4Uje+eBbqx4V9ftVMMdFQ+8SKGrrkb8n96Lzi9+eZQJrcUL6xIa
         XmelBldgacnajjVn5/MyFpNKZlbm+Wkc8XXyHtIWslZtolwSAAUqWLsLJ4whp9H3mMPB
         cIQtHP7sCaGPVyUshTPZLQih6bb2wFh6EF7vNtP23zQwJL1nkqqiz911QwMBjh07FMkn
         ml0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=5jOiKXVFbTYvgNmGxK9tP0ntHX6iRsdqW8SbupaXIYo=;
        b=Y4r8en/PUTEr+dPAq842ggfOSkrNhU+T62vNJyIA6g/m6fpww+FJ7YrzAbUBCodAFl
         YEtGw28jYx5d29QF2fpScIsXhB0+uoIcbcifqcoACAPMGpRbUcUNQ8DSthR/kz2v8I1v
         dlyQSBpfgaS/iBivTJ2PFDReFU03C3ks6Z1UcfAFP7NtWm57sZV/KXgkH40fz6kSwYZq
         oDerl7yxNciU9qtB2VssIBY/AYy6fnx721lJMFr/WHrMpIpNKMZJNseUeTyOobU2uuYq
         uygX2wS0FIBLSdjzmWz9sfev3W0K7Wp7PbRhR6kLprDvaE26ckugfV+nF86kJUqDD4U7
         PZuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5jOiKXVFbTYvgNmGxK9tP0ntHX6iRsdqW8SbupaXIYo=;
        b=IFYq+YHnMlVsZRMtH2PSEZNQ8kz7TQkcmRTrefLELVKxNdgoKbBsgoKOa7nqZkOj3a
         ciFIfai42lWJOaPmHr80GiNgi45FnJylghVk4PipoOzWk17H4p3zUmQ3q70cuXn6kCxT
         sQD2tQh8UMSrNS8oaVEmESIOBPLKJTUSi58rrLEK+uQ3/F1vzzKAq9fHEvkSA6WktPf5
         u0DX9CiEvHC2GACs9lERpZNkazucnhtIYV8UCfUOTYFbkFnzodj/+jjfpNi7xlz/JpfP
         LYvz1bAOLOxFXsEAw0oCmE20u/q2TkN09vmk2rtsISLrMuFRCij6qlzXF/Ht8/4NC1Mi
         wPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5jOiKXVFbTYvgNmGxK9tP0ntHX6iRsdqW8SbupaXIYo=;
        b=aNEgQVc3fqShVFOXXZMi7Gcz4uoUBXblmVtdcdZJGQqHGzH7RKygaaUxM0tx+oy48H
         wSR83w4SqYn/Y8JtMuzb+G82bbOvWuJn4KVLqKpcLkseu+VACvA0Yva7yA3ohELh3p60
         CZMs0CBaIUQDom44G7m409Py89DK3kwHrlOVI3kyvqj2dolVhMvj6lcfkSrTwJ/Qn1h1
         60hRuDPbIUDk22LhwQ6Q0DRATTLx3bGQQO2BR4Y1p9996gmrXGKWVL8gMNZmoEChI/Fn
         bnhG4uO334j60815kTKXlBbrsyZ5nE6S1KK4GnY5mZATtLHafVXMP0f7uUiGJcLR9J/7
         57ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMH9NmlygA42w2mOoU3mbzKxNtryX25TkCedxaRjdAFrcNeMVn
	DTs9frQr/UJD1ov/ldZqhss=
X-Google-Smtp-Source: APXvYqzD8v8t0Zt5ZscZ0XxLUS/4NV/aS7niQbhM5+4KDu3GV3GX0IirVeyuoPj9GAhQwyfTBca5fg==
X-Received: by 2002:a0d:f9c3:: with SMTP id j186mr9705917ywf.116.1563377012751;
        Wed, 17 Jul 2019 08:23:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3288:: with SMTP id y130ls1621011yby.5.gmail; Wed, 17
 Jul 2019 08:23:32 -0700 (PDT)
X-Received: by 2002:a25:5746:: with SMTP id l67mr26060898ybb.452.1563377012146;
        Wed, 17 Jul 2019 08:23:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563377012; cv=none;
        d=google.com; s=arc-20160816;
        b=Nra1XqFDzGCs1jhPaUez0MXO8Lrm8/QpY75jfr26yawn1xB0RacYbf+CVlD3cVk1ru
         2K/h6z0Kv6/8G/D3cKruiAB9ICRD9aKrnEP3Bifd2DLSIQhseNOXLkD3GrE3RRL5fI4C
         NTXjJt7rVtPU1Krhc7Qa8Yylr7yN6hDL2eu2Yy8lcO3MC3bsoMyjceVFRs/JEqAt4TLH
         PdnJ9qQoGD14oL8Q25bRtunB9zdlD3bx3K8F6MNzaM7Z3k7WpMAZ0G/cq6gQEDIQcpQS
         H5g3ziq+pFu2MKBhnqpl0c8WCphUfTuKundmTe3sdOXPQaF79C+uAoYGL5Vyqm1sTwhU
         Ki5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date;
        bh=HnW4bkUbQ2VQlGAIpwJN5IjM+cJZrWePe64q3Q6A28o=;
        b=LjqsFxbCjIO0QtdtN4tZ09fO4p4eI87CrCauFDDYRNsFTsLDrjNLX7kZk/yibhxojD
         VRycMHAv8E7aLy1o5Q3PJriz6ke2x8SNa6REQhSV3PHp/Hw7Kv3fQHLfiIsMOM5iyUfi
         mDUv3KZ2KvLNmHHJvLzlHbCc/V1mNboFsbctQJtPvBQA8bgkxYGxt3gs8Hiert5Wohnb
         fNLWZ1l9vEE/tY3OUgTF2yIdjU1R+tjC6nI9+cO7pArMd9NrsucwMZdsgAtYtIf0KYrc
         W4UoXB9TROSDpnKMbJasGXRNj+22ww1D/3KF7mDouZdmZvll4Gi4Pj1WiOnRV3v2rOKs
         x0lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id r15si71866ybc.3.2019.07.17.08.23.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 08:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from callcc.thunk.org (guestnat-104-133-0-99.corp.google.com [104.133.0.99] (may be forged))
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6HFNQK1019058
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Jul 2019 11:23:27 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 5AE86420054; Wed, 17 Jul 2019 11:23:26 -0400 (EDT)
Date: Wed, 17 Jul 2019 11:23:26 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
        Joe Perches <joe@perches.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-riscv@lists.infradead.org,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 4/4] debian: add generic rule file
Message-ID: <20190717152326.GC31412@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	"Enrico Weigelt, metux IT consult" <lkml@metux.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	"Enrico Weigelt, metux IT consult" <info@metux.net>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Robo Bot <apw@canonical.com>, Joe Perches <joe@perches.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
 <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
 <20190715191245.GD3068@mit.edu>
 <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
 <20190716123431.GB2999@mit.edu>
 <77f82ca2-f89b-e8e2-507a-c37bce1343a5@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <77f82ca2-f89b-e8e2-507a-c37bce1343a5@metux.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Wed, Jul 17, 2019 at 04:16:39PM +0200, Enrico Weigelt, metux IT consult wrote:
> 
> > In practice, that's not going to be a problem for most distributions.
> > The traditional way Debian-derived systems have done builds is
> > completely outside of git.  So there will be a linux_5.2.orig.tar.gz
> > and a linux_5.2-1.debian.tar.xz.  dpkg_source -x will first unpackage
> > the orig.tar.gz, and then the debian.tar.xz, and if the second
> > overwrites the first, it's no big deal.
> 
> ACK. IIRC they already filter out debian/ directories when generating
> upstream tarballs - other upstreams already provide their debian/
> stuff, too.

Well, no, actually they don't.  That's because as much as possible
they want the upstream tarball to be bit-for-bit identical to the one
published on the official upstream distribution site.  That allows
them to include the detached PGP signature from the upstream
maintainer, if one is provided.

If there are files in the upstream debian/ directory that they don't
need, they can delete in the distro's debian/rules file.  Ideally, so
we shouldn't include files in the Linux kernel's debian/ directory
willy-nilly.  But the debian/rules file will *always* be present, and
so it will be overwritten by the <package>_<ver>.debian.tar.xz file,
and so it's no big deal.

					- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190717152326.GC31412%40mit.edu.
