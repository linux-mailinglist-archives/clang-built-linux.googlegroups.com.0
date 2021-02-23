Return-Path: <clang-built-linux+bncBCTMJT52XYCBB74T2WAQMGQEYQRULDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BE73230C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 19:31:28 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id g3sf11058979ild.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 10:31:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614105087; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBZleE9R8SGrmeRZwlEwTj/ugvxSuVP03jMiBykLja0PtPtqscVktsSSzPPdqHJjx1
         5BjPJYQDz3NzLzOVO3yl4J0BCHFdZ6YMvuRifjlIhPTEd+G9WPngKZsfAjTrg9hFCSkE
         /po0q5jJ4+IIkBM4y5DDcw7z2jPMe/6auBLYLtFjbPQhDP8UaG0mpyFqBd277oGFOhHw
         Snj57EKkjsFCdvTEe300osOi282D4igFOu9i4w4PY1798rsJc8dBswk+/FYuQyh4uJnV
         PzLW8+qEpZ+u11W/GvQxOSq6R+XdlXmGTyhRgUBXE9Loi2BuYGbXooLwsAODW5JoAIJF
         nsLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=95Sb5jGuzq59YjJw/D56pdTF00DDMIIeO+CW6V96+dg=;
        b=rZc8PUM8CyGCVQbSyx3yZD8RDaHH14/LCHdXQaHnTVDD8lBgxui5XPApCS3MpqrBqT
         ikbsTcMXiygai78Z52wefwuX95f/3dAMrHoV/Q7YTbWj6XAg4IZ7zs8GLCDfDgLZE8Xy
         jWFTo0L4CH1ClJ0VBwPaRKDvKz8crwTseSfQKxtvgkd05ecF9RYuG9/wdoYjzIIt8bij
         UCEWAhDp0Ar8jlr+doegSgZQCAku/+b3vRvvwxYp8HW66MmsyLRE1DgCYBuuDN7FqrOZ
         kjAZ2bksLOSLcA0tXc0eRd+NZJTylMRLvKQI1l52+CpBMh98R/PUeX2+QM2iaMUrYQ9V
         wS2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TdJSDzPW;
       spf=pass (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=95Sb5jGuzq59YjJw/D56pdTF00DDMIIeO+CW6V96+dg=;
        b=GudZKZlsUIloUhs97aBxmJJKdvX/s9+/mF2RTn9gv3vpt3ChzWVXYem9ZQX1K9Cjhj
         MfHrHVweewUTuzz29BUNOODqktoS0/P/URWlVcAhEmlJG4MfHMnpB8TrQIfWhmQ0qXai
         HFxdUtCwKnpb2iRMI/8rcT0+isqa1hhWuwV0sjrq58x8hLCMTr+yyI9y5NFBwsxj6CJv
         a0l76Cvsx3dJImRDpqjzFxSyHl9MtE7rt99O3CKH/M0IAUfl/OVDampREIbm/lnhJlvw
         Y7QTKO7twctZYISm2TrJ1FoaLP4Wng+ugHIlyAspGyRzSSy9d9MHCSKg8wgExpw9SwTq
         3+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=95Sb5jGuzq59YjJw/D56pdTF00DDMIIeO+CW6V96+dg=;
        b=pKnzqFHcw8uHHArZYYx8fn09is6BY64Sa7JjirN1emv8wcioAXklOu67irlQzVk9BZ
         Y99UiqDoEOFbhX4Yfuj7tdPsR1khguBEM/lXos4RQ0ZkUbxtWyLNzyHMmz37SJwZnZFf
         YKwJToJxWBUIR571UdBzuMYXO7xGAWNCoRFeJ9O3wmBzETaI/4jNPvenia/Nf1vc+K9L
         hvM9zPhNzM0alRpf91d8wF/Pdbqvdl8wZit7HP4hG+fcHGdKbeMwDp2SqOpFPRjeHa3G
         dwRAyH3o2qnkuAySzFUi2FV/3BK6caYZe5NaO549Xy3asRNEJhQBboXh9F6zPqdNriXm
         VQYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531H2J/fyQK5Pl7uM7agdAUR234bWtykFqr115GOpfnIHovEB1lp
	D9bK8XVv7f4+3YR0g5M1a+8=
X-Google-Smtp-Source: ABdhPJxKidjtBKd4XqOoypXAaHi9Phm4RX7nTWcvLrBqv9GF6NIEREILS/sQB+GBXXimK7nFuNoyWQ==
X-Received: by 2002:a92:c145:: with SMTP id b5mr14780808ilh.186.1614105087766;
        Tue, 23 Feb 2021 10:31:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6d04:: with SMTP id m4ls2983913jac.9.gmail; Tue, 23 Feb
 2021 10:31:27 -0800 (PST)
X-Received: by 2002:a02:700a:: with SMTP id f10mr11319557jac.125.1614105087362;
        Tue, 23 Feb 2021 10:31:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614105087; cv=none;
        d=google.com; s=arc-20160816;
        b=SOQtkFHh2NArJzRsIeZEtiOeXx1Avn67Kowk8SqTivLy+5UksFCgBy2XCoa3cN6UBy
         Snuq/6yrooM8IlHvjBY0FYBmlGwzT/gytDYW9ajmcrhFQfI0A7LmeylazqYXW5GUIFlM
         IF65kV5+XN5yKqdfi4Ued91DNeQqSAcfSRcz0poQGW9PYLzjvdXJ5UVISNeMQrcJwMCd
         PJ6YHPHKdV6zK6GA7MwAqRPw2jKjJ9aBOjMgerYbmwjq7pnEgpx/R8SyhQpgaL8kDyMP
         H9KlepuBgTWwoOIoBv5EE6Al5lyjT1+lGC/MJyDaRytMk3n9o8bEtH6wg7esRMdtE0T6
         ZZeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=0IILrvf/7m6bvCc1rwXuXJbtv0dhR6vB5J8wLIpcLsU=;
        b=jZWSjB9RckXQskLS9DaMJGCA/ENyYHzBevBwFtVXYj4kRUzSdPBE32qVL9+h2cwEC0
         MKxotvfotrhEfujV36NLrDmzHMq0txWZbP4hr2yzIwjLUBE1W6DF9q1tiEm4Nls5NkgF
         IPmRH2rvbhhRs6fuLqZ8rLq/Pj0GRKfX0/VOxxBDXHsT60KnM7wgg4mZoH5My+KptrNo
         eLbrqCv7E2o3OeJi8BfR7TeqdFNAgRIb2w3GZaLbKmvx1fDkn1tg4BQzdzr5zd9hqUuB
         2D3ZFyUt4dN8liZ/hYiWRzlMD/D38y820fzK+yEm5cshbBZCE8HL4Nh/Rf/X2J47jxRB
         0Xxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TdJSDzPW;
       spf=pass (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i2si588285iov.2.2021.02.23.10.31.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 10:31:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2554B64E57;
	Tue, 23 Feb 2021 18:31:26 +0000 (UTC)
Message-ID: <fca142d9af11b3debd76a49ff8d62bd2dd4a1553.camel@kernel.org>
Subject: Re: [PATCH v3 4/6] ceph: convert readpage to fscache read helper
From: Jeff Layton <jlayton@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Date: Tue, 23 Feb 2021 13:31:24 -0500
In-Reply-To: <202102240217.iFWnRE35-lkp@intel.com>
References: <20210223130629.249546-5-jlayton@kernel.org>
	 <202102240217.iFWnRE35-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jlayton@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TdJSDzPW;       spf=pass
 (google.com: domain of jlayton@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jlayton@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, 2021-02-24 at 02:18 +0800, kernel test robot wrote:
> Hi Jeff,
>=20
> I love your patch! Yet something to improve:
>=20
> [auto build test ERROR on ceph-client/for-linus]
> [also build test ERROR on v5.11]
> [cannot apply to next-20210223]
> [If your patch is applied to the wrong git tree, kindly drop us a note.


Yes. This patch is based on top of David Howells' fscache-netfs-lib
branch, which has some new infrastructure that's not in Linus' master
branch yet.

> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20

I keep forgetting to do that. I'll try to remember in the future.

Thanks!

> url:    https://github.com/0day-ci/linux/commits/Jeff-Layton/ceph-convert=
-to-netfs-helper-library/20210223-211133
> base:   https://github.com/ceph/ceph-client.git for-linus
> config: x86_64-randconfig-a003-20210223 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c943=
9ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=3D1 build):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wget https://raw.githubus=
ercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chmod +x ~/bin/make.cross
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# install x86_64 cross co=
mpiling tool for clang build
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# apt-get install binutil=
s-x86-64-linux-gnu
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# https://github.com/0day=
-ci/linux/commit/aa28edc5eea70d90d6438db51c32b22d47fd0f40
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git remote add linux-revi=
ew https://github.com/0day-ci/linux
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git fetch --no-tags linux=
-review Jeff-Layton/ceph-convert-to-netfs-helper-library/20210223-211133
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git checkout aa28edc5eea7=
0d90d6438db51c32b22d47fd0f40
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# save the attached .conf=
ig to linux build tree
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0COMPILER_INSTALL_PATH=3D$=
HOME/0day COMPILER=3Dclang make.cross ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
> =C2=A0=C2=A0=C2=A0In file included from fs/ceph/super.c:22:
> > > fs/ceph/cache.h:12:10: fatal error: 'linux/netfs.h' file not found
> =C2=A0=C2=A0=C2=A0#include <linux/netfs.h>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^=
~~~~~~~~~~~~~~
> =C2=A0=C2=A0=C2=A01 error generated.
> --
> > > fs/ceph/addr.c:15:10: fatal error: 'linux/netfs.h' file not found
> =C2=A0=C2=A0=C2=A0#include <linux/netfs.h>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^=
~~~~~~~~~~~~~~
> =C2=A0=C2=A0=C2=A01 error generated.
>=20
>=20
> vim +12 fs/ceph/cache.h
>=20
> =C2=A0=C2=A0=C2=A0=C2=A011=09
> =C2=A0=C2=A0> 12	#include <linux/netfs.h>
> =C2=A0=C2=A0=C2=A0=C2=A013=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
Jeff Layton <jlayton@kernel.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/fca142d9af11b3debd76a49ff8d62bd2dd4a1553.camel%40kernel.o=
rg.
