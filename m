Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSGZQDVQKGQEAHCG3LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F969B61A
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 20:13:29 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id q12sf7013035pfl.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 11:13:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566584008; cv=pass;
        d=google.com; s=arc-20160816;
        b=T+FMd3uJU95cqGUMLWGDvO4CQTDttEqqz17NTU81UmLuTJDTOMa/7PpyNAv7dvG0+r
         WLXMBpyv7joLgLZkvEX7/EVE+u2r/Oywg4xx27ius1VPpYN9wNe/wsGdnB/pVNfnMdd5
         S1xgfs+CyCb5NuNxFDLQfwoB7lWtTwRACT8ZqPGGYGa//v1fqYq0aHi8SDfFXbT937up
         GcLsoz2WS06nlc+BmbZ+OO18mpXn1FbrnAg2Yp9msE8VvfoCsjU0nvZQbS365DGL1Mgz
         /LvivrsziRc+v0v3uVL8emScLuYbAnWrm5C05fjgzLvaLaJf+nNhrTH4Hratei4hGycv
         tALg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IRmvOJM+R/GyZNsu4d1apdDHiz1myQJKBHnkv6sC6CM=;
        b=L8xVk3eKPTkw7h3jxIJgM9ZEjhOl2cKMiPayWAM4UUdbFYLzQG4aMokO2BrHREG2Xx
         UXf5df0So6rmKUaAFjVRpP19u8AKvRIq9yLVbpMcQu+KWat2ge3r0P9srukgxOLehxpB
         LfPvsslk/Ka/TIqogDTMyFJQZwWa2IQno/NvY6fyRnHWcyw1KX4xK1usWxYfjmwWFL0R
         mSvOM14BDi81/nCtqOXpByqWAHaE3MwXlVndHsZK86FSryzkLcXBqJQh/04eA7M8LE7/
         GXGc9wpCLkIqcBCR1VTg/prQZjZzn7l2kKdUEcD8G4IeTShdQSaqoyRiEtuqSIzrNEj9
         mORA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VEAV53xo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IRmvOJM+R/GyZNsu4d1apdDHiz1myQJKBHnkv6sC6CM=;
        b=ZnFm5vP9/xNXgSwpC8NodfkNUOgBazSjh9Xc+ol2iJNAA33ONhem4y9feJXkgm9XOK
         CN0jVULk4Bn0wRk/QRQXPP8MA1mlSS0HAvO1X/K3c6muqtAT8sTzlSxhWbiSjkrvhG2g
         Q8R+r52Ce/RQ8wwRlW1RUIvlD8eMiktFfiB/kdSIh8gP9mQ2NdHLTQE6qFjlOIIHJmIT
         XCTTl1QXfCc6YjXXhraaoYBxSPSyyGiYuTEakwqbahs/q6YbKo3D8Gm7ICp6wdKXb1WS
         7uazePraVk512crLuezauW1DQiuXky5F352NiTWvzBKhuiHL8HgcQzFAd7ahr/jt86h1
         WMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IRmvOJM+R/GyZNsu4d1apdDHiz1myQJKBHnkv6sC6CM=;
        b=f/cc4+wH5Zhx9ZGR44yBK5UhUXVh4cFWLnC4ecrXI8PGQDndQWgzsDiaE1rVavKkCo
         5aQ3gYnLvsI1lKOea/Z+egP7wUupow7SipjUrGyrdynDYv0YmjJrkjWee2yt3r9tzTHR
         /yNfN1vYDRAluuYpFQpkWRijEv5ybOCpu+sLiHIEkF3rS3o3JX5b0adIiEdI9rKlAdj/
         Y2SrN05dCsNrteTbSsVEu4/9BVe5OSA1p+PVDEed257D613FwnSv8chPzPcTtrQgaw12
         MbcQaikNh+LmwT3UpzYCOmIF4WUgarm5ru2rB1ZZTvVrgxlqy01VVFxP1GgPx4OBthup
         lcGw==
X-Gm-Message-State: APjAAAWLqphN/wdwALVpeRuuJE26g/mfUeoZc7r+s4T/F9e8evYreXVf
	gnipDahs3qUkNIf1ItUGrlE=
X-Google-Smtp-Source: APXvYqzxES0zjZtw7MVmZXjWMVBYiQ+y2CgUcBHNypGcbgdWoVkfMhB2LT4myR8UKTG2LMw0Vq8kzg==
X-Received: by 2002:a17:90a:b016:: with SMTP id x22mr6824952pjq.116.1566584008367;
        Fri, 23 Aug 2019 11:13:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:354:: with SMTP id fh20ls2790196pjb.2.gmail; Fri, 23
 Aug 2019 11:13:28 -0700 (PDT)
X-Received: by 2002:a17:90a:bf82:: with SMTP id d2mr6542445pjs.121.1566584008000;
        Fri, 23 Aug 2019 11:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566584007; cv=none;
        d=google.com; s=arc-20160816;
        b=PAszbkZgyAhZpFX3KFO5rY/4ISCJS/Eh9L6Ipo4Bm26++O7IZQgIJOdcAZ9tHHH5+v
         D6f0RqPeXAa4F6Lka31yV6Y9/am/DPNDSK30RFf1CV0/Nq3n25SbzxSs7mWTlUghJkcf
         HyjOaUS7YP+bKZJZLa3vdCAfhKGDBAF/3oXWuplYCM+TLWKYbsH9JcZEXdonx4xXiPde
         +d8wldNj/rvTBsFFBxKox9RmJ1heGshdxSMsDklLVB55fMtw0GPfV4oeU/enB2OEUxRJ
         zO6RhYWFZxewH7x3r4Nq2zenx9pc2uHiCFAdrhpjBjo9weEHgXtU52HzhuAuQ+E+w306
         2giQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yiX21JsNYqqYmlp/uon5c6VlVYOGricvjoFHoBn7aIw=;
        b=xCDfCiCfOVlelhLFiMAFAkuFYYnz5kDqtvdh5wGDdwr6MM0P2LgkwOXrm+eswscCzM
         wTEUy9vSSdDogZYIBZu3SegSwEuK9YFYQwCaxaGAbdndxQBXJxQtCxQLbYTSCy2KgOXN
         y6UgSGWOthZXzgP+DbFg2CUUkxmLOz7IaqbDHiZrzw+QkCKX0qlc5dHmqXavr+wDQAsH
         cjPM3W2QzCucP69z1VJwGoTpRmm1NTK9tXyiGuZTf+CFf880AUDY0A3mPM6tiSkb8GJD
         IiGC2mQYpO5NQDnXBQEtjqcly0fw4tUKdCxJccf4Q0urErUa38PVYo+7asCnoth6WXsD
         HyYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VEAV53xo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id ck6si244718plb.4.2019.08.23.11.13.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2019 11:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id w10so6182699pgj.7
        for <clang-built-linux@googlegroups.com>; Fri, 23 Aug 2019 11:13:27 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr5047998pgg.381.1566584006835;
 Fri, 23 Aug 2019 11:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <201908240209.BPykqwWz%lkp@intel.com>
In-Reply-To: <201908240209.BPykqwWz%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Aug 2019 11:13:15 -0700
Message-ID: <CAKwvOdn5w7pkb2YoFE7bB1+1gSOsySeH+nxPLQtiMS8ZzzuXew@mail.gmail.com>
Subject: Re: [PATCH v6] Add flags option to get xattr method paired to __vfs_getxattr
To: Mark Salyzyn <salyzyn@android.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>, android-kernel <android-kernel@google.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VEAV53xo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

Hi Mark,
Below is a report from 0day bot from a build with Clang.  It's only
cc'ing our mailing list for now, but the below look like actual
warnings that might be introduced.  Can you please take a look?

On Fri, Aug 23, 2019 at 11:04 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> In-Reply-To: <20190820153326.115458-1-salyzyn@android.com>
> References: <20190820153326.115458-1-salyzyn@android.com>
> TO: Mark Salyzyn <salyzyn@android.com>
> CC: linux-kernel@vger.kernel.org, kernel-team@android.com, Mark Salyzyn <=
salyzyn@android.com>, Stephen Smalley <sds@tycho.nsa.gov>, linux-security-m=
odule@vger.kernel.org, stable@vger.kernel.org, Jonathan Corbet <corbet@lwn.=
net>, Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, Greg=
 Kroah-Hartman <gregkh@linuxfoundation.org>, Eric Van Hensbergen <ericvh@gm=
ail.com>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus=
@codewreck.org>, David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.c=
om>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, J=
eff Layton <jlayton@kernel.org>, Sage Weil <sage@redhat.com>, Ilya Dryomov =
<idryomov@gmail.com>, Steve French <sfrench@samba.org>, Tyler Hicks <tyhick=
s@canonical.com>, Jan Kara <jack@suse.com>, Theodore Ts'o <tytso@mit.edu>, =
Andreas Dilger <adilger.kernel@dilger.ca>, Jaegeuk Kim <jaegeuk@kernel.org>=
, Miklos Szeredi <miklos@szeredi.hu>, Bob Peterson <rpeterso@redhat.com>, A=
ndreas Gruenbacher <agruenba@redhat.com>, David Woodhouse <dwmw2@infradead.=
org>, Richard Weinberger <richard@nod.at>, Dave Kleikamp <shaggy@kernel.org=
>, Tejun Heo <tj@kernel.org>, Trond Myklebust <trond.myklebust@hammerspace.=
com>, Anna Schumaker <anna.schumaker@netapp.com>, Mark Fasheh <mark@fasheh.=
com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.=
com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnib=
ond.com>, Alexander Viro <viro@zeniv.linux.org.uk>, Phillip Lougher <philli=
p@squashfs.org.uk>, Artem Bityutskiy <dedekind1@gmail.com>, Adrian Hunter <=
adrian.hunter@intel.com>, "Darrick J. Wong" <darrick.wong@oracle.com>, linu=
x-xfs@vger.kernel.org, Hugh Dickins <hughd@google.com>, "David S. Miller" <=
davem@davemloft.net>, Serge Hallyn <serge@hallyn.com>, James Morris <jmorri=
s@namei.org>, Mimi Zohar <zohar@linux.ibm.com>, Paul Moore <paul@paul-moore=
.com>, Eric Paris <eparis@parisplace.org>, Casey Schaufler <casey@schaufler=
-ca.com>, "J. Bruce Fields" <bfields@redhat.com>, Eric Biggers <ebiggers@go=
ogle.com>, Benjamin Coddington <bcodding@redhat.com>, Andrew Morton <akpm@l=
inux-foundation.org>, Mathieu Malaterre <malat@debian.org>, "Ernesto A. Fer=
n=C3=A1ndez" <ernesto.mnd.fernandez@gmail.com>, Vyacheslav Dubeyko <slava@d=
ubeyko.com>, Jann Horn <jannh@google.com>, Bharath Vedartham <linux.bhar@gm=
ail.com>, Jeff Mahoney <jeffm@suse.com>, Dave Chinner <dchinner@redhat.com>=
, Allison Henderson <allison.henderson@oracle.com>, Brian Foster <bfoster@r=
edhat.com>, Eric Sandeen <sandeen@sandeen.net>, linux-doc@vger.kernel.org, =
linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org, v9fs-developer@li=
sts.sourceforge.net, linux-afs@lists.infradead.org, linux-btrfs@vger.kernel=
.org, ceph-devel@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technic=
al@lists.samba.org, ecryptfs@vger.kernel.org, linux-ext4@vger.kernel.org, l=
inux-f2fs-devel@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, clust=
er-devel@redhat.com, linux-mtd@lists.infradead.org, jfs-discussion@lists.so=
urceforge.net, linux-nfs@vger.kernel.org, ocfs2-devel@oss.oracle.com, devel=
@lists.orangefs.org, linux-unionfs@vger.kernel.org, reiserfs-devel@vger.ker=
nel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-integrity@vger.k=
ernel.org, selinux@vger.kernel.org
> CC: kernel-team@android.com, Mark Salyzyn <salyzyn@android.com>, Stephen =
Smalley <sds@tycho.nsa.gov>, linux-security-module@vger.kernel.org, stable@=
vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Gao Xiang <gaoxiang25@hu=
awei.com>, Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman <gregkh@linuxfo=
undation.org>, Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lu=
cho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, David Howells=
 <dhowells@redhat.com>, Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicp=
anda.com>, David Sterba <dsterba@suse.com>, Jeff Layton <jlayton@kernel.org=
>, Sage Weil <sage@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Steve Fr=
ench <sfrench@samba.org>, Tyler Hicks <tyhicks@canonical.com>, Jan Kara <ja=
ck@suse.com>, Theodore Ts'o <tytso@mit.edu>, Andreas Dilger <adilger.kernel=
@dilger.ca>, Jaegeuk Kim <jaegeuk@kernel.org>, Miklos Szeredi <miklos@szere=
di.hu>, Bob Peterson <rpeterso@redhat.com>, Andreas Gruenbacher <agruenba@r=
edhat.com>, David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <rich=
ard@nod.at>, Dave Kleikamp <shaggy@kernel.org>, Tejun Heo <tj@kernel.org>, =
Trond Myklebust <trond.myklebust@hammerspace.com>, Anna Schumaker <anna.sch=
umaker@netapp.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilp=
lan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@om=
nibond.com>, Martin Brandenburg <martin@omnibond.com>, Alexander Viro <viro=
@zeniv.linux.org.uk>, Phillip Lougher <phillip@squashfs.org.uk>, Artem Bity=
utskiy <dedekind1@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>, "Dar=
rick J. Wong" <darrick.wong@oracle.com>, linux-xfs@vger.kernel.org, Hugh Di=
ckins <hughd@google.com>, "David S. Miller" <davem@davemloft.net>, Serge Ha=
llyn <serge@hallyn.com>, James Morris <jmorris@namei.org>, Mimi Zohar <zoha=
r@linux.ibm.com>, Paul Moore <paul@paul-moore.com>, Eric Paris <eparis@pari=
splace.org>, Casey Schaufler <casey@schaufler-ca.com>, "J. Bruce Fields" <b=
fields@redhat.com>, Eric Biggers <ebiggers@google.com>, Benjamin Coddington=
 <bcodding@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Mathieu =
Malaterre <malat@debian.org>, "Ernesto A. Fern=C3=A1ndez" <ernesto.mnd.fern=
andez@gmail.com>, Vyacheslav Dubeyko <slava@dubeyko.com>, Jann Horn <jannh@=
google.com>, Bharath Vedartham <linux.bhar@gmail.com>, Jeff Mahoney <jeffm@=
suse.com>, Dave Chinner <dchinner@redhat.com>, Allison Henderson <allison.h=
enderson@oracle.com>, Brian Foster <bfoster@redhat.com>, Eric Sandeen <sand=
een@sandeen.net>, linux-doc@vger.kernel.org, linux-erofs@lists.ozlabs.org, =
devel@driverdev.osuosl.org, v9fs-developer@lists.sourceforge.net, linux-afs=
@lists.infradead.org, linux-btrfs@vger.kernel.org, ceph-devel@vger.kernel.o=
rg, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, ecryptfs@v=
ger.kernel.org, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourcefo=
rge.net, linux-fsdevel@vger.kernel.org, cluster-devel@redhat.com, linux-mtd=
@lists.infradead.org, jfs-discussion@lists.sourceforge.net, linux-nfs@vger.=
kernel.org, ocfs2-devel@oss.oracle.com, devel@lists.orangefs.org, linux-uni=
onfs@vger.kernel.org, reiserfs-devel@vger.kernel.org, linux-mm@kvack.org, n=
etdev@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel=
.org
>
> Hi Mark,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc5 next-20190823]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help improve the system]
>
> url:    https://github.com/0day-ci/linux/commits/Mark-Salyzyn/Add-flags-o=
ption-to-get-xattr-method-paired-to-__vfs_getxattr/20190823-200231
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb0=
6f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> security/integrity/evm/evm_main.c:103:8: error: use of undeclared iden=
tifier 'inode'
>            if (!(inode->i_opflags & IOP_XATTR))
>                  ^
>    security/integrity/evm/evm_main.c:109:14: warning: incompatible pointe=
r to integer conversion assigning to 'int' from 'char *' [-Wint-conversion]
>                    args.flags =3D xattr->name;
>                               ^ ~~~~~~~~~~~
>    1 warning and 1 error generated.
> --
> >> fs/xfs/libxfs/xfs_attr.c:327:13: error: assigning to 'uint8_t *' (aka =
'unsigned char *') from 'const unsigned char *' discards qualifiers [-Werro=
r,-Wincompatible-pointer-types-discards-qualifiers]
>            args.value =3D value;
>                       ^ ~~~~~
>    1 error generated.
>
> vim +/inode +103 security/integrity/evm/evm_main.c
>
> ae1ba1676b88e6 Matthew Garrett     2017-11-07   91
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01   92  static int evm_find_p=
rotected_xattrs(struct dentry *dentry)
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01   93  {
> 2c925a9366fc27 Mark Salyzyn        2019-08-20   94      struct xattr_gs_a=
rgs args;
> 21af7663147603 Matthew Garrett     2018-05-11   95      struct xattr_list=
 *xattr;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01   96      int error;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01   97      int count =3D 0;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01   98
> 2c925a9366fc27 Mark Salyzyn        2019-08-20   99      memset(&args, 0, =
sizeof(args));
> 2c925a9366fc27 Mark Salyzyn        2019-08-20  100      args.dentry =3D d=
entry;
> 2c925a9366fc27 Mark Salyzyn        2019-08-20  101      args.inode =3D d_=
backing_inode(dentry);
> 2c925a9366fc27 Mark Salyzyn        2019-08-20  102
> 5d6c31910bc071 Andreas Gruenbacher 2016-09-29 @103      if (!(inode->i_op=
flags & IOP_XATTR))
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  104              return -E=
OPNOTSUPP;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  105
> 2c925a9366fc27 Mark Salyzyn        2019-08-20  106      args.flags =3D XA=
TTR_NOSECURITY;
> 2c925a9366fc27 Mark Salyzyn        2019-08-20  107
> fa516b66a1bfce Matthew Garrett     2018-05-15  108      list_for_each_ent=
ry_rcu(xattr, &evm_config_xattrnames, list) {
> 2c925a9366fc27 Mark Salyzyn        2019-08-20  109              args.flag=
s =3D xattr->name;
> 2c925a9366fc27 Mark Salyzyn        2019-08-20  110              error =3D=
 __vfs_getxattr(&args);
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  111              if (error=
 < 0) {
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  112                      i=
f (error =3D=3D -ENODATA)
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  113                       =
       continue;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  114                      r=
eturn error;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  115              }
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  116              count++;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  117      }
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  118
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  119      return count;
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  120  }
> 15647eb3985ef3 Dmitry Kasatkin     2011-09-01  121
>
> :::::: The code at line 103 was first introduced by commit
> :::::: 5d6c31910bc0713e37628dc0ce677dcb13c8ccf4 xattr: Add __vfs_{get,set=
,remove}xattr helpers
>
> :::::: TO: Andreas Gruenbacher <agruenba@redhat.com>
> :::::: CC: Al Viro <viro@zeniv.linux.org.uk>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn5w7pkb2YoFE7bB1%2B1gSOsySeH%2BnxPLQtiMS8ZzzuXew%4=
0mail.gmail.com.
