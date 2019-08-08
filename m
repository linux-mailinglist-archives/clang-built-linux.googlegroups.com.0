Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQGSWLVAKGQEJGXGFNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F9586D7D
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 00:59:13 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y9sf56306356plp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 15:59:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565305152; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ty7hDeVOzzZFRVDM9/ry92c/XBBM4QbPV6BGyw+g442V5F0OT+6VkLVX/dEtmxgjso
         dZ339nu31xMfh4+h31rlKzr8pOPtTE2XG3or+gAkFNNKEbPb+8KdywaLDzxmiT79HGl7
         PkJ5IqgzCuhyqzIpsR2ot2Q8mimDRJRZx+Xv8iyIng/uQBdqyP1gY48nM+HX3AVmQff1
         lAQk/S6lW12mk7GJd/HX/7U2iefEtDqWCvT50mZM+8Uv/Legb+lUUz4wRQbew0hEFX2j
         gx/+h1IyFirvhYOGmRNGNmKbL1aiogpopGlP1rBGSDkwgPOlBx03DrewsRjD7WFP0b0T
         uQOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qjGNmMEwSQLwLhK8TVOcXgk8bvXfo50E977lr+wYW+Q=;
        b=GlVgti584RXMUBoWfocTabYuQ175HpaC4KxrPg49BHVWRWx7UxwD/nq+Y9I0UsNx81
         TVUMcsR8FuHHSnH5l49PIGAOk8qHVOKZBuNCThrde4AssmBliIYX8LCgsVHAIZcek57g
         CEXx9F/TF/nsMNujwLp7b9h8qUzyQCuN9yT6gE/0nkTMqzkYBkH7ZLFOim+Rs/1yNNrJ
         I4zG+P6G9JSLqtVp1WLsVCkFmQUhwPcgnQEE/kbZN12ONqglvoe5CVxqsGZnO1XM216n
         0Zhl6MbLXLSYOFMiQ64nSRsdwdQIlK+x70ECvCntfLsPU23C3NLOZHp6M81JnbL5HDpj
         +B2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F4sQn4zj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qjGNmMEwSQLwLhK8TVOcXgk8bvXfo50E977lr+wYW+Q=;
        b=LV5wHcXLBuuLDFewZ3khOe9F7aj/XIV87OsOooyfsAG2EfjYiYdTHVGyIlqMRJuZP2
         o7WtOK/XSjVOw46ifBUCrBqLisodKNmXL6G9zrc2aTtBFMuvLqboeI1USYMs81ogpu/g
         eKd0EPeYPTGqQ1Qf2RyO0F/JGs1VV21Xm7xGXzuZGpVLkDZ+SrY0B6Spu7HlGhAu+UsT
         vJbAH6F9L/pPEJcVY2f+aW1kTYpMy9TpiUbzOX1HuyiGGDNhgMPQgKZ1F8Ma7xDuJXnv
         /CGk6ssct+l98mIzDp2ABxwumpdmC99fMty+PFtg8RBY9V2wcC0zlZNEmJhC8z13Lksj
         sytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qjGNmMEwSQLwLhK8TVOcXgk8bvXfo50E977lr+wYW+Q=;
        b=h3PTXFfL/DbXmmYVzvMfvBQkv0uZ/bXCS6NfuQ2QTTxkTQOz4Wpy0DO7OJyQ8vAkVx
         AVVjdf3VPXCnLvkuVQBRHK3KIZCp0RWqpxbes0TXI1hStMj3IQ8kDyUERQaXC88u9ysm
         aWhvUGkMAJCWnxBqCSP6oGGsfXeFZmkBc4VuQqrM9JtaD7QDAla283BjA8Q3AtZsanP1
         qnVu+1inEJ6J1VukcUHf/XEwD1pN8RlUbPpsO9gNtnZbVeIdb7lrd0gT8hLAqN6k4LBB
         c80K0LK93dnotJyvtSuzWjvKy8jabXyfhoLrnfjFtAVatOE2xPBvz9NeocwpgQfgtzom
         wbhg==
X-Gm-Message-State: APjAAAXbMwEpOuxaeHcnS35fobCSxJ+vXsf279txumvYth8jh1UZGXzn
	GRsjAs7+JWHba88mMlXIIRE=
X-Google-Smtp-Source: APXvYqym4qlsPCzrreuBn0vont2FpwyEFwEycp/AWBem1R28MqixPAfzS9K0Hd6+fry+Cr8Eur243Q==
X-Received: by 2002:a17:902:2ac7:: with SMTP id j65mr16180586plb.242.1565305152198;
        Thu, 08 Aug 2019 15:59:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:22cd:: with SMTP id s71ls1073483pjc.1.gmail; Thu, 08
 Aug 2019 15:59:11 -0700 (PDT)
X-Received: by 2002:a17:902:8bc1:: with SMTP id r1mr16107129plo.42.1565305151848;
        Thu, 08 Aug 2019 15:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565305151; cv=none;
        d=google.com; s=arc-20160816;
        b=QDr1VHBlVUBoECeUXkM3c2A0Pzw5kdvoT7RxIrrTg5azyG230P4V3pnXofkBOrWn6P
         ZuzVRweuDkrx2fYLOzlm5nG9opVuTA0GtHehoSCzcCExECYxTvSO0D5AGdIP/JUphcum
         pMdIdC3UDL0e/vH6nStR1u+ykZzJBMDehqy6JDvU3gZi2jwDjAYUgyXP0C+I34PmTt3h
         ux5tHkfL3EyWd0ZaerjXFf0903M9jQS3tz++1qLQoxhPB2T6O/6gt+hlG3i5SLz0EZo+
         RYO8ZMBZtKPLN76lHhF+obWp/IFVU5J5hRCMSLHICEA7Xodjf1++Bg//ZrCtBbD+U7Q4
         UpvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nYGjbYAWISAy7eidCLvmT84wXSEFbyXIQOoicMHj/gs=;
        b=Wh/iBrvBmcIEsmxIc+u2sDcH5PEPrcXfas9B3pQzgVpSJHaLdoUyHtNQsqCYLGGQ4g
         1yQj215hVH/YxWlGVebs8UGZ+j5h+helyfPZZ3FXz20Qj0qusGs+xA9H5CnK5s/EOM0q
         KtjDj40iGD+TQvwHvzlsjJqW8wWfTxRaorAxhgmcXcqKzQCNuYTy6PIw+PK5sd0IpeMU
         03ztJL+gkCGbhVamjovhI63EqJOaCwrjGo6GjaiHq3N/NRARBSYpdj9JkeRM7zZIiUvv
         lh02esDjSmJUmUyd3pzkZRci4ZOqXDL0tpz20Z3QrzZX2hEB2EQ+25tBCWjG4uZipycT
         Ozdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F4sQn4zj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id ck6si3210461plb.4.2019.08.08.15.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 15:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id b13so44924457pfo.1
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 15:59:11 -0700 (PDT)
X-Received: by 2002:a17:90a:bf02:: with SMTP id c2mr6415844pjs.73.1565305150351;
 Thu, 08 Aug 2019 15:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <201908090541.voVDlUH2%lkp@intel.com>
In-Reply-To: <201908090541.voVDlUH2%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Aug 2019 15:58:59 -0700
Message-ID: <CAKwvOdn9HLUR7y9hNCLt4339+Z52fTpp11x8jwqj=dr5WFO1Jw@mail.gmail.com>
Subject: Re: [PATCH 5/9] fs: Move start and length fiemap fields into fiemap_extent_info
To: cmaiolino@redhat.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F4sQn4zj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

+ Carlos

On Thu, Aug 8, 2019 at 2:39 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> In-Reply-To: <20190808082744.31405-6-cmaiolino@redhat.com>
> References: <20190808082744.31405-6-cmaiolino@redhat.com>
> TO: Carlos Maiolino <cmaiolino@redhat.com>
> CC: linux-fsdevel@vger.kernel.org
> CC: hch@lst.de, adilger@dilger.ca, jaegeuk@kernel.org, darrick.wong@oracl=
e.com, miklos@szeredi.hu, rpeterso@redhat.com, linux-xfs@vger.kernel.org
>
> Hi Carlos,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc3 next-20190808]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help improve the system]
>
> url:    https://github.com/0day-ci/linux/commits/Carlos-Maiolino/New-fiem=
ap-infrastructure-and-bmap-removal/20190808-221354
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
> >> fs/cifs/cifsfs.c:1006:12: error: incompatible pointer types initializi=
ng 'int (*)(struct inode *, struct fiemap_extent_info *)' with an expressio=
n of type 'int (struct inode *, struct fiemap_extent_info *, u64, u64)' (ak=
a 'int (struct inode *, struct fiemap_extent_info *, unsigned long long, un=
signed long long)') [-Werror,-Wincompatible-pointer-types]
>            .fiemap =3D cifs_fiemap,
>                      ^~~~~~~~~~~
>    1 error generated.
>
> vim +1006 fs/cifs/cifsfs.c
>
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  1000
> 754661f143e70d Arjan van de Ven 2007-02-12  1001  const struct inode_oper=
ations cifs_file_inode_ops =3D {
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  1002        .setattr =3D cifs=
_setattr,
> 48a77aa7e20557 Steve French     2016-05-18  1003        .getattr =3D cifs=
_getattr,
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  1004        .permission =3D c=
ifs_permission,
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  1005        .listxattr =3D ci=
fs_listxattr,
> 2f3ebaba13cebd Ronnie Sahlberg  2019-04-25 @1006        .fiemap =3D cifs_=
fiemap,
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  1007  };
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  1008
>
> :::::: The code at line 1006 was first introduced by commit
> :::::: 2f3ebaba13cebd8badfb9aed31c0cf3cc82eb4f4 cifs: add fiemap support
>
> :::::: TO: Ronnie Sahlberg <lsahlber@redhat.com>
> :::::: CC: Steve French <stfrench@microsoft.com>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/201908090541.voVDlUH2%25lkp%40intel.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn9HLUR7y9hNCLt4339%2BZ52fTpp11x8jwqj%3Ddr5WFO1Jw%4=
0mail.gmail.com.
