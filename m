Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPWBYTXQKGQE5MJ4N7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id AE85111B978
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 18:00:47 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id a20sf10772812vkm.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 09:00:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576083646; cv=pass;
        d=google.com; s=arc-20160816;
        b=XydHiSoZiBObNvf5rkQNy6/RkbRTdGkqOJ4DauY/9XQMfgf9Rqey6Nz4Rp7ntoJNyf
         Rit9V+W1fGJGozKo69zh/iApUQu0DWr8wIiSem7B3o5ch0fIq2ZwgxjWhIucbrWMdRtw
         +9Nic3bceM/2d+Qto9btqLSJJ337ds8HZ1AQz3TJkQ3T7auscEBKvQPPF3Og+JFxEHyQ
         jmKUCKXNtu3XxssFLmFlOs20BkYcQTc/nFsfCWbguz9P44Jgu7pgOOUDoABZdHWvPPwl
         CE1a/0AhBej4939k5uRu0DUGxcBns1hlxi8bl+MOPGyX5blkhJyMf1hrCB36uxoBRNc5
         zyCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VoEeujhLaOog9tWJxoMc83A0jZXVBP64w2Ypsl20874=;
        b=HGi+qzOQMrIa14BKG2UOcLjyHcTcobhTHyENSD+bGRJqCe9Lc9zcOqoZiUYavXpbY9
         QfOZ+H+Y/tsJ7H7USJyb2NLaoF7cgnRNsu/00cb2qPCZc0tvMrH/WfiZKUA7NfEQJaji
         bIroDEY401Yt7qwxi68vjsvij/qm5e0VhnI9SAZ5eN72ysWT7VBACdTGxDCLExKyNmoF
         T11oJ+bzNovysqPzCNL3aH3MUsQ/dl3p9rowlpeQfVrXNk8XHscL5gZV3NrnHgDkyb+W
         9gyKydfkCLootknLD8etajLsH5lAEiiUEFvOX1+NBHIrUBWWHGt+Jx6dDzlBS3gznQ1q
         PMZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VoEeujhLaOog9tWJxoMc83A0jZXVBP64w2Ypsl20874=;
        b=dYlYEh6ew3g5pKdy54RrsCI6RVfmHYwVtRa8X5NauGaTkR1NmzhdEL8/Sbcd7stk2t
         aS4BB3RgLG9JYKwOih5zsM3c0XSKhV4LLhzhOOA9paB6pWLaBYmFxmvCyAkCev4GyCaQ
         Qi9fIK1r52eQpDR/6IKtBBhyyec4K0UUayrlj+SUQuamEmsctG4OqHz55B+HaUxmi/AI
         ZcyRPdDaUeuZ4G4JgP5thpivP4AmJOKS9Ko5X7yLrtdHUq0Hn1IOnoCXB/xq99+NoDQm
         fBUKUJ83wtXvXGRbVFZEo/3E4goEStn4E0hWXAMZrMq1YWQC8Fl/AM9/Y3wUmAoSR+GF
         EMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VoEeujhLaOog9tWJxoMc83A0jZXVBP64w2Ypsl20874=;
        b=BKkflG+9x7xTH3peOT5MyvonAebaQ5JJBMl4tcabpOb5GhkFBYtmpMjrA2fOg1cxzp
         84uJSDEz8ZAq122c6mbS/Kb46Rpqoe70Xgaqugc3aA+hakh1flqxhMbdxMpUWW6fFBQw
         9KE/PpQTTDbKsDVlUro0tdovjVHRkpAc26PsbhJ1WAbfNaw++hvwIhnsFhCLVWtVSlnk
         qSPH6tslqwKTiKkMY/psZLOt+wRmx4jO4SHipJpolX4qbMPNjKWDnAyaIHrKEAh69y3E
         6XMCGMXa6nA52+O7wpnPDPrOYSh+Hrow/RDZ+hJy0VwNT//NKIT+dfh3MXVH2SVct+hp
         HkGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVeglfT0TRSJfnm9Qdeetp+VLV4VOca0rRw6BHDoTm01cdVx/NJ
	Pk5e9uiI8wbcPXLsTRKnebQ=
X-Google-Smtp-Source: APXvYqyInrdZsliJt/DbdW15Hc9O5lVCsygfKXUOYe/30MSTXeOIYseSzgOBdo2VPP56IqWdeLMl7A==
X-Received: by 2002:a05:6102:675:: with SMTP id z21mr3253958vsf.46.1576083646318;
        Wed, 11 Dec 2019 09:00:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:940c:: with SMTP id w12ls173563vkd.12.gmail; Wed, 11 Dec
 2019 09:00:45 -0800 (PST)
X-Received: by 2002:a05:6122:313:: with SMTP id c19mr4461113vko.79.1576083645792;
        Wed, 11 Dec 2019 09:00:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576083645; cv=none;
        d=google.com; s=arc-20160816;
        b=GHA0te7+9O9e8/vrjR7FRqhbxs9demKGjynqPRwyg42DWzXXmTfWE1nwWOhh+2Rh9y
         MFsQh/Awaadl3GZIBB27fLGzBYrGX88k08BepcZ3N4CCoPOPK3ysGGtMKE/ytTSVEcP0
         vd7avOvMEDjWQSGMUORVNexblTg05De34468t8CGgmvRYr5mpQBljvvlCCpKEjRUvhcU
         eZzVSNXXGhOeegaXaD3tX0hcKO70fHzYezfH6TxkSJJJq8kYVCKIB9gea9LthxKmUSOA
         Ygu7A6e0jJ7HucRx6qtehNPfsG1oJP1MOFoA9ShxIhTXY0JJWCy3WxubkC6xXSDJh15n
         W8dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Ng2XqI/uozx0ZijOa17prpWCxJyuasIu2lPW1c/At0A=;
        b=Kq9TGjxSl7+Xs0Mc2Ye+ykikqfbwi/zkFEIcACNF4iflnVOcRhD4EMfY3mt9m176N8
         iVcFn37ZQY4itA5zt+XwFDyle6MyXB1UrydAbs8bbFqBGMee6hhjNjVH+koAGNnTRo29
         l4uMzPgR0IMralTKmrAkrMV//cPOEt51d6OsEQd3t19R6oKOY0h1jKZmPWZaGQEn6p5g
         Db6WHu2Qe1t+zcvQI6COsPVQb+5RNQbzpeMcmA7fe46jwWsS5JTsbg+5frOZMPP4IlOP
         2Q3Vy9JTgBn3j07WMFMqB1R+H+QCXl74/kntug+rMbfj0CSPZXupVJFJfyegoIXMBJvy
         TATw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id l12si90901vsb.1.2019.12.11.09.00.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 09:00:45 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Dec 2019 09:00:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; 
   d="gz'50?scan'50,208,50";a="414921421"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 11 Dec 2019 09:00:42 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1if5Lu-000Fe7-BM; Thu, 12 Dec 2019 01:00:42 +0800
Date: Thu, 12 Dec 2019 00:59:29 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 4/5] fibmap: Use bmap instead of ->bmap method in
 ioctl_fibmap
Message-ID: <201912120059.ScPRVEwb%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ddhgpk5flvsma6yk"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--ddhgpk5flvsma6yk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
In-Reply-To: <20191210150344.112181-5-cmaiolino@redhat.com>
References: <20191210150344.112181-5-cmaiolino@redhat.com>
TO: Carlos Maiolino <cmaiolino@redhat.com>
CC: linux-fsdevel@vger.kernel.org
CC: hch@lst.de

Hi Carlos,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on hch-configfs/for-next]
[also build test ERROR on f2fs/dev-test linus/master v5.5-rc1 next-20191210]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Carlos-Maiolino/fs-Enable-bmap-function-to-properly-return-errors/20191211-054645
base:   git://git.infradead.org/users/hch/configfs.git for-next
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project e8d955f29de7ee4b50d889c418b4efb18add0653)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/inode.c:1608:5: error: redefinition of 'bmap'
   int bmap(struct inode *inode, sector_t *block)
       ^
   include/linux/fs.h:2869:19: note: previous definition is here
   static inline int bmap(struct inode *inode,  sector_t *block)
                     ^
   1 error generated.

vim +/bmap +1608 fs/inode.c

^1da177e4c3f41 Linus Torvalds  2005-04-16  1593  
^1da177e4c3f41 Linus Torvalds  2005-04-16  1594  /**
^1da177e4c3f41 Linus Torvalds  2005-04-16  1595   *	bmap	- find a block number in a file
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1596   *	@inode:  inode owning the block number being requested
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1597   *	@block: pointer containing the block to find
^1da177e4c3f41 Linus Torvalds  2005-04-16  1598   *
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1599   *	Replaces the value in *block with the block number on the device holding
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1600   *	corresponding to the requested block number in the file.
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1601   *	That is, asked for block 4 of inode 1 the function will replace the
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1602   *	4 in *block, with disk block relative to the disk start that holds that
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1603   *	block of the file.
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1604   *
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1605   *	Returns -EINVAL in case of error, 0 otherwise. If mapping falls into a
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1606   *	hole, returns 0 and *block is also set to 0.
^1da177e4c3f41 Linus Torvalds  2005-04-16  1607   */
ff77a49bea67b8 Carlos Maiolino 2019-12-10 @1608  int bmap(struct inode *inode, sector_t *block)
^1da177e4c3f41 Linus Torvalds  2005-04-16  1609  {
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1610  	if (!inode->i_mapping->a_ops->bmap)
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1611  		return -EINVAL;
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1612  
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1613  	*block = inode->i_mapping->a_ops->bmap(inode->i_mapping, *block);
ff77a49bea67b8 Carlos Maiolino 2019-12-10  1614  	return 0;
^1da177e4c3f41 Linus Torvalds  2005-04-16  1615  }
^1da177e4c3f41 Linus Torvalds  2005-04-16  1616  EXPORT_SYMBOL(bmap);
^1da177e4c3f41 Linus Torvalds  2005-04-16  1617  

:::::: The code at line 1608 was first introduced by commit
:::::: ff77a49bea67b86108b5170418e95db357a4fec5 fs: Enable bmap() function to properly return errors

:::::: TO: Carlos Maiolino <cmaiolino@redhat.com>
:::::: CC: 0day robot <lkp@intel.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912120059.ScPRVEwb%25lkp%40intel.com.

--ddhgpk5flvsma6yk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AAA=

--ddhgpk5flvsma6yk--
