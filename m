Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBS6O4WAAMGQELKKQQWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F8B30C26C
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 15:53:00 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id l12sf8902556otq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 06:53:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612277580; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMxZ7nN42NHUZxVB1aE5IKo5yVNjpKXGchIFvfBce+DCjki7u8MrNH2zdfQlmPlqIt
         VZpXKTchUyDsmR9J7w/7bGmEppKSOEqeE8yeOb0Glzzb28AZGQ/4cVe5SsktIZWinZM7
         UifIxt/aFVjBT5zMLuPW7LtWvjm4A3ChkwclHt79hdMQAZHE+MEJpOnZvHsjG5qVv4xV
         c8sWkvaAaccXlNqoI2gw1C/UGOqD42L39sAoFJi6eGIGo/i7Bbx26zYDJTo9Rgbz7NBQ
         1CoZnrro8gpXOrxQOd+qZIJvOb92oyAhLVrCIH+jvgwB/7nFmampwGwdBcrkFu+DTUy7
         ovdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0/OwfTXyJm9tx1eMzHcITX0MAfqok3+No0mIlkJb7EQ=;
        b=ycjkZD/cxcFLKVzYfaukcXuztA3SuJ5c51ZV9kpvk2GzmP7WLmyaZoF3bcKpZP4bgf
         e8fn5dICSDH4No0FBC7QR7wDyfka0utx/Au4CHEVWCYLvq4D6z3ZXrvGMqVA48CH20y4
         D5vFdtgm5s7UjnGp0iPPOlAY1DgS24JDkBcwcxUlrz0LYUe/yOiZM5NjfdfleWCJ08+T
         ibwOholzMEbv3tduCVNVUDG7EkbS2nKfBrM35mUJQX6L23B7F6n+a++2FCkqunb1tf3w
         XOWhgx5C+6bimbjPJ0yU/yn37YPovrlito1VT5Y2Ikvnhf/cKId5ugiVv7ClNmmJngb+
         Eqyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0/OwfTXyJm9tx1eMzHcITX0MAfqok3+No0mIlkJb7EQ=;
        b=ngWMjzrcT02gHQEBqytRWz5/9tKFbTE+OQbTJ5m7zDlIYxLJFJ0l8Sj1RmvvWu71yp
         /vQRwjY8HirW/Ab8eqa/jgmHPetg8Yj1Kq5hFx/pdqVjsGonqMVqhISwWVmC9DHtAkoa
         sClHNOtuHgIEDprcdkKtBMruaraKR+PF0JJp/3K6uA8kCI5U0N+8sB8J4UGREHuqtmBr
         oZz2fU7nKMA1uazoUvklhJ/qDsqSfQ1bZzv7iw1ZgOP+rJz3b+0rhTgnR7h68KeHGXKp
         1eOiOdLV90TQ4G0FuNkNHB+t4Po6jqS9v9sxhsKqtrwkTkSuBL4w7jsM5XVOpqIUAAkb
         x4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0/OwfTXyJm9tx1eMzHcITX0MAfqok3+No0mIlkJb7EQ=;
        b=Zc27pBoFUn6sxOiEzz9DGkrhWSqretP6cK/fnmta709mtNrAXit0nmUZLTFEVNCG37
         o1WHONUz8jJqhBOJTra1Y75pOL2dY3ZiTdo7GWqMd633XYhBqjafzlYPITG1ULdDOof/
         rCn+oLcGhDwPIbhIGzBdQO+IwusbgQYhzCpv1FJQyXT2dyUPKbdl/RxWWNDsOGeJw9v3
         WoewZEQM2AQHqYFkJAnDGi8kFHUhYi8nDXOtCr4bukVTF4X0F8ZyiZqovumERwIX8tn2
         1RDLkyq8ITppH1h8gpKmSBTeGEHXnRMdS7oSLYmWM167T40/JE19IQ1iGuz5Qcqvshwx
         yYLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NhG4ITSpANjO5R3zjVsDZ1W/g+1RjR779U4y3LeM4jdql1ksZ
	5RzY4q9RVeBIloVrJkEr7Uk=
X-Google-Smtp-Source: ABdhPJzLT+/TMyFVCdyLdqxaTvl/lYolYgtGUWtXFDzBpvcQyLn4rkbskFx6BxOO41O3eNcN+cVcVg==
X-Received: by 2002:a9d:30c1:: with SMTP id r1mr854501otg.68.1612277579681;
        Tue, 02 Feb 2021 06:52:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd82:: with SMTP id b124ls4952826oii.3.gmail; Tue, 02
 Feb 2021 06:52:59 -0800 (PST)
X-Received: by 2002:aca:43c3:: with SMTP id q186mr2848188oia.77.1612277579023;
        Tue, 02 Feb 2021 06:52:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612277579; cv=none;
        d=google.com; s=arc-20160816;
        b=cpGFzYk0mjl0O+hklMH1ANUyiaSYGMpoN05aZSSYiiOa/Ka9Nm7PYbzBKxKaFWrUkW
         ntpP0rwF8fsjuXhTBqIy1u4hY5ovVhUaI0YuyoClqHgfbPVg1l1+bBHGM9Usw0FY867/
         ahgvMeBTUp60eAySaL3VPiusfEpWLfgdFk0xbSu5+qVEkAOo64nY+Tfx4XSqU2cA1fp3
         xEhGP3RYR9znClDEcEnnJk2LyK/+9zjZGfKbrAnraV/ztrQOaUmcyzy23G1McK0nMnYE
         tdiwV4K//QLncGB1jrqzsbn1lgRFQA9q28Ih626ApbyEmMWDrWKKrSbch1fbyFsYvGuD
         ncVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=p6YEIww18nyGTnNsje906C+oIq0MT15joIRDyfLJsGQ=;
        b=0bGRmRU2LXxEfi3JKk/TM+U6LW4pY5BDzJgY3Znd1DtLEmKvBo5ghnof6I7OAQ740x
         bFKR1cGW8UiGcwGIH9pE3PwG2U800P11rflU1s+7Bf1jO/KtJzgMMkeVywp/l7l1rp8k
         tV2o9AxJvxBbUUrELQ+pszz/F/rHnXoytq312q+wVc11V+XoXkPtITCn6UT6p2GvCwlu
         1lKwDMY+soPfa7bkigqT+3ol+NxsGFeWG6QUgeVW3JyuUqJypOluyGTUjkgfE7wfQV7t
         2/wBV+QUvVlv1Xm3/DEDgFl5LtihdYmaC05zaFof9jKgF8rt5ulyUjPRuKufJqBiTGJ9
         oSHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id l126si1259526oih.3.2021.02.02.06.52.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 06:52:58 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: ehsHGSJXTLg0iZm7O4660ynb2VFpEESSynYPPKNE1nwzCQ+fBnm0W8dM2ZflrRwTAw35bGKXr/
 LrGdymDDhI9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="168541297"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; 
   d="gz'50?scan'50,208,50";a="168541297"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 06:52:57 -0800
IronPort-SDR: +r9E8SureNPa3m7iTwgf9vzcCiiZl7gbxOINcw3czXUe6tRv1/zLdSDkQqPcvWL/BphAV900Ly
 +sDtA9x4F89A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; 
   d="gz'50?scan'50,208,50";a="413171671"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Feb 2021 06:52:55 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l6x30-0009RP-Lu; Tue, 02 Feb 2021 14:52:54 +0000
Date: Tue, 2 Feb 2021 22:52:22 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: fs/ntfs/aops.c:899:12: warning: stack frame size of 2528 bytes in
 function 'ntfs_write_mst_block'
Message-ID: <202102022212.g9mqIxIF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   88bb507a74ea7d75fa49edd421eaa710a7d80598
commit: d0a3ac549f389c1511a4df0d7638536305205d20 ubsan: enable for all*config builds
date:   7 weeks ago
config: powerpc-randconfig-r035-20210202 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d0a3ac549f389c1511a4df0d7638536305205d20
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout d0a3ac549f389c1511a4df0d7638536305205d20
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ntfs/aops.c:899:12: warning: stack frame size of 2528 bytes in function 'ntfs_write_mst_block' [-Wframe-larger-than=]
   static int ntfs_write_mst_block(struct page *page,
              ^
   1 warning generated.


vim +/ntfs_write_mst_block +899 fs/ntfs/aops.c

^1da177e4c3f41 Linus Torvalds     2005-04-16   874  
^1da177e4c3f41 Linus Torvalds     2005-04-16   875  /**
^1da177e4c3f41 Linus Torvalds     2005-04-16   876   * ntfs_write_mst_block - write a @page to the backing store
^1da177e4c3f41 Linus Torvalds     2005-04-16   877   * @page:	page cache page to write out
^1da177e4c3f41 Linus Torvalds     2005-04-16   878   * @wbc:	writeback control structure
^1da177e4c3f41 Linus Torvalds     2005-04-16   879   *
^1da177e4c3f41 Linus Torvalds     2005-04-16   880   * This function is for writing pages belonging to non-resident, mst protected
^1da177e4c3f41 Linus Torvalds     2005-04-16   881   * attributes to their backing store.  The only supported attributes are index
^1da177e4c3f41 Linus Torvalds     2005-04-16   882   * allocation and $MFT/$DATA.  Both directory inodes and index inodes are
^1da177e4c3f41 Linus Torvalds     2005-04-16   883   * supported for the index allocation case.
^1da177e4c3f41 Linus Torvalds     2005-04-16   884   *
^1da177e4c3f41 Linus Torvalds     2005-04-16   885   * The page must remain locked for the duration of the write because we apply
^1da177e4c3f41 Linus Torvalds     2005-04-16   886   * the mst fixups, write, and then undo the fixups, so if we were to unlock the
^1da177e4c3f41 Linus Torvalds     2005-04-16   887   * page before undoing the fixups, any other user of the page will see the
^1da177e4c3f41 Linus Torvalds     2005-04-16   888   * page contents as corrupt.
^1da177e4c3f41 Linus Torvalds     2005-04-16   889   *
^1da177e4c3f41 Linus Torvalds     2005-04-16   890   * We clear the page uptodate flag for the duration of the function to ensure
^1da177e4c3f41 Linus Torvalds     2005-04-16   891   * exclusion for the $MFT/$DATA case against someone mapping an mft record we
^1da177e4c3f41 Linus Torvalds     2005-04-16   892   * are about to apply the mst fixups to.
^1da177e4c3f41 Linus Torvalds     2005-04-16   893   *
^1da177e4c3f41 Linus Torvalds     2005-04-16   894   * Return 0 on success and -errno on error.
^1da177e4c3f41 Linus Torvalds     2005-04-16   895   *
^1da177e4c3f41 Linus Torvalds     2005-04-16   896   * Based on ntfs_write_block(), ntfs_mft_writepage(), and
^1da177e4c3f41 Linus Torvalds     2005-04-16   897   * write_mft_record_nolock().
^1da177e4c3f41 Linus Torvalds     2005-04-16   898   */
^1da177e4c3f41 Linus Torvalds     2005-04-16  @899  static int ntfs_write_mst_block(struct page *page,
^1da177e4c3f41 Linus Torvalds     2005-04-16   900  		struct writeback_control *wbc)
^1da177e4c3f41 Linus Torvalds     2005-04-16   901  {
^1da177e4c3f41 Linus Torvalds     2005-04-16   902  	sector_t block, dblock, rec_block;
^1da177e4c3f41 Linus Torvalds     2005-04-16   903  	struct inode *vi = page->mapping->host;
^1da177e4c3f41 Linus Torvalds     2005-04-16   904  	ntfs_inode *ni = NTFS_I(vi);
^1da177e4c3f41 Linus Torvalds     2005-04-16   905  	ntfs_volume *vol = ni->vol;
^1da177e4c3f41 Linus Torvalds     2005-04-16   906  	u8 *kaddr;
^1da177e4c3f41 Linus Torvalds     2005-04-16   907  	unsigned int rec_size = ni->itype.index.block_size;
ac4ecf968acb9e Kees Cook          2018-08-17   908  	ntfs_inode *locked_nis[PAGE_SIZE / NTFS_BLOCK_SIZE];
^1da177e4c3f41 Linus Torvalds     2005-04-16   909  	struct buffer_head *bh, *head, *tbh, *rec_start_bh;
d53ee3222459f3 Anton Altaparmakov 2005-04-06   910  	struct buffer_head *bhs[MAX_BUF_PER_PAGE];
^1da177e4c3f41 Linus Torvalds     2005-04-16   911  	runlist_element *rl;
d53ee3222459f3 Anton Altaparmakov 2005-04-06   912  	int i, nr_locked_nis, nr_recs, nr_bhs, max_bhs, bhs_per_rec, err, err2;
d53ee3222459f3 Anton Altaparmakov 2005-04-06   913  	unsigned bh_size, rec_size_bits;
c49c31115067bc Richard Knutsson   2006-09-30   914  	bool sync, is_mft, page_is_dirty, rec_is_dirty;
d53ee3222459f3 Anton Altaparmakov 2005-04-06   915  	unsigned char bh_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16   916  
ac4ecf968acb9e Kees Cook          2018-08-17   917  	if (WARN_ON(rec_size < NTFS_BLOCK_SIZE))
ac4ecf968acb9e Kees Cook          2018-08-17   918  		return -EINVAL;
ac4ecf968acb9e Kees Cook          2018-08-17   919  
^1da177e4c3f41 Linus Torvalds     2005-04-16   920  	ntfs_debug("Entering for inode 0x%lx, attribute type 0x%x, page index "
^1da177e4c3f41 Linus Torvalds     2005-04-16   921  			"0x%lx.", vi->i_ino, ni->type, page->index);
^1da177e4c3f41 Linus Torvalds     2005-04-16   922  	BUG_ON(!NInoNonResident(ni));
^1da177e4c3f41 Linus Torvalds     2005-04-16   923  	BUG_ON(!NInoMstProtected(ni));
^1da177e4c3f41 Linus Torvalds     2005-04-16   924  	is_mft = (S_ISREG(vi->i_mode) && !vi->i_ino);
^1da177e4c3f41 Linus Torvalds     2005-04-16   925  	/*
^1da177e4c3f41 Linus Torvalds     2005-04-16   926  	 * NOTE: ntfs_write_mst_block() would be called for $MFTMirr if a page
^1da177e4c3f41 Linus Torvalds     2005-04-16   927  	 * in its page cache were to be marked dirty.  However this should
^1da177e4c3f41 Linus Torvalds     2005-04-16   928  	 * never happen with the current driver and considering we do not
^1da177e4c3f41 Linus Torvalds     2005-04-16   929  	 * handle this case here we do want to BUG(), at least for now.
^1da177e4c3f41 Linus Torvalds     2005-04-16   930  	 */
^1da177e4c3f41 Linus Torvalds     2005-04-16   931  	BUG_ON(!(is_mft || S_ISDIR(vi->i_mode) ||
^1da177e4c3f41 Linus Torvalds     2005-04-16   932  			(NInoAttr(ni) && ni->type == AT_INDEX_ALLOCATION)));
78af34f03d33d2 Anton Altaparmakov 2006-02-24   933  	bh_size = vol->sb->s_blocksize;
78af34f03d33d2 Anton Altaparmakov 2006-02-24   934  	bh_size_bits = vol->sb->s_blocksize_bits;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01   935  	max_bhs = PAGE_SIZE / bh_size;
^1da177e4c3f41 Linus Torvalds     2005-04-16   936  	BUG_ON(!max_bhs);
d53ee3222459f3 Anton Altaparmakov 2005-04-06   937  	BUG_ON(max_bhs > MAX_BUF_PER_PAGE);
^1da177e4c3f41 Linus Torvalds     2005-04-16   938  
^1da177e4c3f41 Linus Torvalds     2005-04-16   939  	/* Were we called for sync purposes? */
^1da177e4c3f41 Linus Torvalds     2005-04-16   940  	sync = (wbc->sync_mode == WB_SYNC_ALL);
^1da177e4c3f41 Linus Torvalds     2005-04-16   941  
^1da177e4c3f41 Linus Torvalds     2005-04-16   942  	/* Make sure we have mapped buffers. */
^1da177e4c3f41 Linus Torvalds     2005-04-16   943  	bh = head = page_buffers(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16   944  	BUG_ON(!bh);
^1da177e4c3f41 Linus Torvalds     2005-04-16   945  
^1da177e4c3f41 Linus Torvalds     2005-04-16   946  	rec_size_bits = ni->itype.index.block_size_bits;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01   947  	BUG_ON(!(PAGE_SIZE >> rec_size_bits));
^1da177e4c3f41 Linus Torvalds     2005-04-16   948  	bhs_per_rec = rec_size >> bh_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16   949  	BUG_ON(!bhs_per_rec);
^1da177e4c3f41 Linus Torvalds     2005-04-16   950  
^1da177e4c3f41 Linus Torvalds     2005-04-16   951  	/* The first block in the page. */
^1da177e4c3f41 Linus Torvalds     2005-04-16   952  	rec_block = block = (sector_t)page->index <<
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01   953  			(PAGE_SHIFT - bh_size_bits);
^1da177e4c3f41 Linus Torvalds     2005-04-16   954  
^1da177e4c3f41 Linus Torvalds     2005-04-16   955  	/* The first out of bounds block for the data size. */
07a4e2da7dd3c9 Anton Altaparmakov 2005-01-12   956  	dblock = (i_size_read(vi) + bh_size - 1) >> bh_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16   957  
^1da177e4c3f41 Linus Torvalds     2005-04-16   958  	rl = NULL;
^1da177e4c3f41 Linus Torvalds     2005-04-16   959  	err = err2 = nr_bhs = nr_recs = nr_locked_nis = 0;
c49c31115067bc Richard Knutsson   2006-09-30   960  	page_is_dirty = rec_is_dirty = false;
^1da177e4c3f41 Linus Torvalds     2005-04-16   961  	rec_start_bh = NULL;
^1da177e4c3f41 Linus Torvalds     2005-04-16   962  	do {
c49c31115067bc Richard Knutsson   2006-09-30   963  		bool is_retry = false;
^1da177e4c3f41 Linus Torvalds     2005-04-16   964  
^1da177e4c3f41 Linus Torvalds     2005-04-16   965  		if (likely(block < rec_block)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16   966  			if (unlikely(block >= dblock)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16   967  				clear_buffer_dirty(bh);
946929d813a3bd Anton Altaparmakov 2005-01-13   968  				set_buffer_uptodate(bh);
^1da177e4c3f41 Linus Torvalds     2005-04-16   969  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16   970  			}
^1da177e4c3f41 Linus Torvalds     2005-04-16   971  			/*
^1da177e4c3f41 Linus Torvalds     2005-04-16   972  			 * This block is not the first one in the record.  We
^1da177e4c3f41 Linus Torvalds     2005-04-16   973  			 * ignore the buffer's dirty state because we could
^1da177e4c3f41 Linus Torvalds     2005-04-16   974  			 * have raced with a parallel mark_ntfs_record_dirty().
^1da177e4c3f41 Linus Torvalds     2005-04-16   975  			 */
^1da177e4c3f41 Linus Torvalds     2005-04-16   976  			if (!rec_is_dirty)
^1da177e4c3f41 Linus Torvalds     2005-04-16   977  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16   978  			if (unlikely(err2)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16   979  				if (err2 != -ENOMEM)
^1da177e4c3f41 Linus Torvalds     2005-04-16   980  					clear_buffer_dirty(bh);
^1da177e4c3f41 Linus Torvalds     2005-04-16   981  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16   982  			}
^1da177e4c3f41 Linus Torvalds     2005-04-16   983  		} else /* if (block == rec_block) */ {
^1da177e4c3f41 Linus Torvalds     2005-04-16   984  			BUG_ON(block > rec_block);
^1da177e4c3f41 Linus Torvalds     2005-04-16   985  			/* This block is the first one in the record. */
^1da177e4c3f41 Linus Torvalds     2005-04-16   986  			rec_block += bhs_per_rec;
^1da177e4c3f41 Linus Torvalds     2005-04-16   987  			err2 = 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16   988  			if (unlikely(block >= dblock)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16   989  				clear_buffer_dirty(bh);
^1da177e4c3f41 Linus Torvalds     2005-04-16   990  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16   991  			}
^1da177e4c3f41 Linus Torvalds     2005-04-16   992  			if (!buffer_dirty(bh)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16   993  				/* Clean records are not written out. */
c49c31115067bc Richard Knutsson   2006-09-30   994  				rec_is_dirty = false;
^1da177e4c3f41 Linus Torvalds     2005-04-16   995  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16   996  			}
c49c31115067bc Richard Knutsson   2006-09-30   997  			rec_is_dirty = true;
^1da177e4c3f41 Linus Torvalds     2005-04-16   998  			rec_start_bh = bh;
^1da177e4c3f41 Linus Torvalds     2005-04-16   999  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1000  		/* Need to map the buffer if it is not mapped already. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1001  		if (unlikely(!buffer_mapped(bh))) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1002  			VCN vcn;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1003  			LCN lcn;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1004  			unsigned int vcn_ofs;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1005  
481d0374217f3f Anton Altaparmakov 2005-08-16  1006  			bh->b_bdev = vol->sb->s_bdev;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1007  			/* Obtain the vcn and offset of the current block. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1008  			vcn = (VCN)block << bh_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1009  			vcn_ofs = vcn & vol->cluster_size_mask;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1010  			vcn >>= vol->cluster_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1011  			if (!rl) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1012  lock_retry_remap:
^1da177e4c3f41 Linus Torvalds     2005-04-16  1013  				down_read(&ni->runlist.lock);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1014  				rl = ni->runlist.rl;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1015  			}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1016  			if (likely(rl != NULL)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1017  				/* Seek to element containing target vcn. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1018  				while (rl->length && rl[1].vcn <= vcn)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1019  					rl++;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1020  				lcn = ntfs_rl_vcn_to_lcn(rl, vcn);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1021  			} else
^1da177e4c3f41 Linus Torvalds     2005-04-16  1022  				lcn = LCN_RL_NOT_MAPPED;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1023  			/* Successful remap. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1024  			if (likely(lcn >= 0)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1025  				/* Setup buffer head to correct block. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1026  				bh->b_blocknr = ((lcn <<
^1da177e4c3f41 Linus Torvalds     2005-04-16  1027  						vol->cluster_size_bits) +
^1da177e4c3f41 Linus Torvalds     2005-04-16  1028  						vcn_ofs) >> bh_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1029  				set_buffer_mapped(bh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1030  			} else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1031  				/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1032  				 * Remap failed.  Retry to map the runlist once
^1da177e4c3f41 Linus Torvalds     2005-04-16  1033  				 * unless we are working on $MFT which always
^1da177e4c3f41 Linus Torvalds     2005-04-16  1034  				 * has the whole of its runlist in memory.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1035  				 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1036  				if (!is_mft && !is_retry &&
^1da177e4c3f41 Linus Torvalds     2005-04-16  1037  						lcn == LCN_RL_NOT_MAPPED) {
c49c31115067bc Richard Knutsson   2006-09-30  1038  					is_retry = true;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1039  					/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1040  					 * Attempt to map runlist, dropping
^1da177e4c3f41 Linus Torvalds     2005-04-16  1041  					 * lock for the duration.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1042  					 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1043  					up_read(&ni->runlist.lock);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1044  					err2 = ntfs_map_runlist(ni, vcn);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1045  					if (likely(!err2))
^1da177e4c3f41 Linus Torvalds     2005-04-16  1046  						goto lock_retry_remap;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1047  					if (err2 == -ENOMEM)
c49c31115067bc Richard Knutsson   2006-09-30  1048  						page_is_dirty = true;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1049  					lcn = err2;
9f993fe4634b39 Anton Altaparmakov 2005-06-25  1050  				} else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1051  					err2 = -EIO;
9f993fe4634b39 Anton Altaparmakov 2005-06-25  1052  					if (!rl)
9f993fe4634b39 Anton Altaparmakov 2005-06-25  1053  						up_read(&ni->runlist.lock);
9f993fe4634b39 Anton Altaparmakov 2005-06-25  1054  				}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1055  				/* Hard error.  Abort writing this record. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1056  				if (!err || err == -ENOMEM)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1057  					err = err2;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1058  				bh->b_blocknr = -1;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1059  				ntfs_error(vol->sb, "Cannot write ntfs record "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1060  						"0x%llx (inode 0x%lx, "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1061  						"attribute type 0x%x) because "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1062  						"its location on disk could "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1063  						"not be determined (error "
8907547d4b099e Randy Dunlap       2005-03-03  1064  						"code %lli).",
8907547d4b099e Randy Dunlap       2005-03-03  1065  						(long long)block <<
^1da177e4c3f41 Linus Torvalds     2005-04-16  1066  						bh_size_bits >>
^1da177e4c3f41 Linus Torvalds     2005-04-16  1067  						vol->mft_record_size_bits,
^1da177e4c3f41 Linus Torvalds     2005-04-16  1068  						ni->mft_no, ni->type,
^1da177e4c3f41 Linus Torvalds     2005-04-16  1069  						(long long)lcn);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1070  				/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1071  				 * If this is not the first buffer, remove the
^1da177e4c3f41 Linus Torvalds     2005-04-16  1072  				 * buffers in this record from the list of
^1da177e4c3f41 Linus Torvalds     2005-04-16  1073  				 * buffers to write and clear their dirty bit
^1da177e4c3f41 Linus Torvalds     2005-04-16  1074  				 * if not error -ENOMEM.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1075  				 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1076  				if (rec_start_bh != bh) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1077  					while (bhs[--nr_bhs] != rec_start_bh)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1078  						;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1079  					if (err2 != -ENOMEM) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1080  						do {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1081  							clear_buffer_dirty(
^1da177e4c3f41 Linus Torvalds     2005-04-16  1082  								rec_start_bh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1083  						} while ((rec_start_bh =
^1da177e4c3f41 Linus Torvalds     2005-04-16  1084  								rec_start_bh->
^1da177e4c3f41 Linus Torvalds     2005-04-16  1085  								b_this_page) !=
^1da177e4c3f41 Linus Torvalds     2005-04-16  1086  								bh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1087  					}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1088  				}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1089  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1090  			}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1091  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1092  		BUG_ON(!buffer_uptodate(bh));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1093  		BUG_ON(nr_bhs >= max_bhs);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1094  		bhs[nr_bhs++] = bh;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1095  	} while (block++, (bh = bh->b_this_page) != head);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1096  	if (unlikely(rl))
^1da177e4c3f41 Linus Torvalds     2005-04-16  1097  		up_read(&ni->runlist.lock);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1098  	/* If there were no dirty buffers, we are done. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1099  	if (!nr_bhs)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1100  		goto done;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1101  	/* Map the page so we can access its contents. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1102  	kaddr = kmap(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1103  	/* Clear the page uptodate flag whilst the mst fixups are applied. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1104  	BUG_ON(!PageUptodate(page));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1105  	ClearPageUptodate(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1106  	for (i = 0; i < nr_bhs; i++) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1107  		unsigned int ofs;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1108  
^1da177e4c3f41 Linus Torvalds     2005-04-16  1109  		/* Skip buffers which are not at the beginning of records. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1110  		if (i % bhs_per_rec)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1111  			continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1112  		tbh = bhs[i];
^1da177e4c3f41 Linus Torvalds     2005-04-16  1113  		ofs = bh_offset(tbh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1114  		if (is_mft) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1115  			ntfs_inode *tni;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1116  			unsigned long mft_no;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1117  
^1da177e4c3f41 Linus Torvalds     2005-04-16  1118  			/* Get the mft record number. */
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1119  			mft_no = (((s64)page->index << PAGE_SHIFT) + ofs)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1120  					>> rec_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1121  			/* Check whether to write this mft record. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1122  			tni = NULL;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1123  			if (!ntfs_may_write_mft_record(vol, mft_no,
^1da177e4c3f41 Linus Torvalds     2005-04-16  1124  					(MFT_RECORD*)(kaddr + ofs), &tni)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1125  				/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1126  				 * The record should not be written.  This
^1da177e4c3f41 Linus Torvalds     2005-04-16  1127  				 * means we need to redirty the page before
^1da177e4c3f41 Linus Torvalds     2005-04-16  1128  				 * returning.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1129  				 */
c49c31115067bc Richard Knutsson   2006-09-30  1130  				page_is_dirty = true;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1131  				/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1132  				 * Remove the buffers in this mft record from
^1da177e4c3f41 Linus Torvalds     2005-04-16  1133  				 * the list of buffers to write.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1134  				 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1135  				do {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1136  					bhs[i] = NULL;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1137  				} while (++i % bhs_per_rec);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1138  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1139  			}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1140  			/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1141  			 * The record should be written.  If a locked ntfs
^1da177e4c3f41 Linus Torvalds     2005-04-16  1142  			 * inode was returned, add it to the array of locked
^1da177e4c3f41 Linus Torvalds     2005-04-16  1143  			 * ntfs inodes.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1144  			 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1145  			if (tni)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1146  				locked_nis[nr_locked_nis++] = tni;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1147  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1148  		/* Apply the mst protection fixups. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1149  		err2 = pre_write_mst_fixup((NTFS_RECORD*)(kaddr + ofs),
^1da177e4c3f41 Linus Torvalds     2005-04-16  1150  				rec_size);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1151  		if (unlikely(err2)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1152  			if (!err || err == -ENOMEM)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1153  				err = -EIO;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1154  			ntfs_error(vol->sb, "Failed to apply mst fixups "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1155  					"(inode 0x%lx, attribute type 0x%x, "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1156  					"page index 0x%lx, page offset 0x%x)!"
^1da177e4c3f41 Linus Torvalds     2005-04-16  1157  					"  Unmount and run chkdsk.", vi->i_ino,
^1da177e4c3f41 Linus Torvalds     2005-04-16  1158  					ni->type, page->index, ofs);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1159  			/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1160  			 * Mark all the buffers in this record clean as we do
^1da177e4c3f41 Linus Torvalds     2005-04-16  1161  			 * not want to write corrupt data to disk.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1162  			 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1163  			do {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1164  				clear_buffer_dirty(bhs[i]);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1165  				bhs[i] = NULL;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1166  			} while (++i % bhs_per_rec);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1167  			continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1168  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1169  		nr_recs++;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1170  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1171  	/* If no records are to be written out, we are done. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1172  	if (!nr_recs)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1173  		goto unm_done;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1174  	flush_dcache_page(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1175  	/* Lock buffers and start synchronous write i/o on them. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1176  	for (i = 0; i < nr_bhs; i++) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1177  		tbh = bhs[i];
^1da177e4c3f41 Linus Torvalds     2005-04-16  1178  		if (!tbh)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1179  			continue;
ca5de404ff036a Nick Piggin        2008-08-02  1180  		if (!trylock_buffer(tbh))
^1da177e4c3f41 Linus Torvalds     2005-04-16  1181  			BUG();
^1da177e4c3f41 Linus Torvalds     2005-04-16  1182  		/* The buffer dirty state is now irrelevant, just clean it. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1183  		clear_buffer_dirty(tbh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1184  		BUG_ON(!buffer_uptodate(tbh));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1185  		BUG_ON(!buffer_mapped(tbh));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1186  		get_bh(tbh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1187  		tbh->b_end_io = end_buffer_write_sync;
2a222ca992c35a Mike Christie      2016-06-05  1188  		submit_bh(REQ_OP_WRITE, 0, tbh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1189  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1190  	/* Synchronize the mft mirror now if not @sync. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1191  	if (is_mft && !sync)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1192  		goto do_mirror;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1193  do_wait:
^1da177e4c3f41 Linus Torvalds     2005-04-16  1194  	/* Wait on i/o completion of buffers. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1195  	for (i = 0; i < nr_bhs; i++) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1196  		tbh = bhs[i];
^1da177e4c3f41 Linus Torvalds     2005-04-16  1197  		if (!tbh)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1198  			continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1199  		wait_on_buffer(tbh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1200  		if (unlikely(!buffer_uptodate(tbh))) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1201  			ntfs_error(vol->sb, "I/O error while writing ntfs "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1202  					"record buffer (inode 0x%lx, "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1203  					"attribute type 0x%x, page index "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1204  					"0x%lx, page offset 0x%lx)!  Unmount "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1205  					"and run chkdsk.", vi->i_ino, ni->type,
^1da177e4c3f41 Linus Torvalds     2005-04-16  1206  					page->index, bh_offset(tbh));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1207  			if (!err || err == -ENOMEM)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1208  				err = -EIO;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1209  			/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1210  			 * Set the buffer uptodate so the page and buffer
^1da177e4c3f41 Linus Torvalds     2005-04-16  1211  			 * states do not become out of sync.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1212  			 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1213  			set_buffer_uptodate(tbh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1214  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1215  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1216  	/* If @sync, now synchronize the mft mirror. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1217  	if (is_mft && sync) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1218  do_mirror:
^1da177e4c3f41 Linus Torvalds     2005-04-16  1219  		for (i = 0; i < nr_bhs; i++) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1220  			unsigned long mft_no;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1221  			unsigned int ofs;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1222  
^1da177e4c3f41 Linus Torvalds     2005-04-16  1223  			/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1224  			 * Skip buffers which are not at the beginning of
^1da177e4c3f41 Linus Torvalds     2005-04-16  1225  			 * records.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1226  			 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1227  			if (i % bhs_per_rec)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1228  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1229  			tbh = bhs[i];
^1da177e4c3f41 Linus Torvalds     2005-04-16  1230  			/* Skip removed buffers (and hence records). */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1231  			if (!tbh)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1232  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1233  			ofs = bh_offset(tbh);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1234  			/* Get the mft record number. */
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1235  			mft_no = (((s64)page->index << PAGE_SHIFT) + ofs)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1236  					>> rec_size_bits;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1237  			if (mft_no < vol->mftmirr_size)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1238  				ntfs_sync_mft_mirror(vol, mft_no,
^1da177e4c3f41 Linus Torvalds     2005-04-16  1239  						(MFT_RECORD*)(kaddr + ofs),
^1da177e4c3f41 Linus Torvalds     2005-04-16  1240  						sync);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1241  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1242  		if (!sync)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1243  			goto do_wait;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1244  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1245  	/* Remove the mst protection fixups again. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1246  	for (i = 0; i < nr_bhs; i++) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1247  		if (!(i % bhs_per_rec)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1248  			tbh = bhs[i];
^1da177e4c3f41 Linus Torvalds     2005-04-16  1249  			if (!tbh)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1250  				continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1251  			post_write_mst_fixup((NTFS_RECORD*)(kaddr +
^1da177e4c3f41 Linus Torvalds     2005-04-16  1252  					bh_offset(tbh)));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1253  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1254  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1255  	flush_dcache_page(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1256  unm_done:
^1da177e4c3f41 Linus Torvalds     2005-04-16  1257  	/* Unlock any locked inodes. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1258  	while (nr_locked_nis-- > 0) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1259  		ntfs_inode *tni, *base_tni;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1260  		
^1da177e4c3f41 Linus Torvalds     2005-04-16  1261  		tni = locked_nis[nr_locked_nis];
^1da177e4c3f41 Linus Torvalds     2005-04-16  1262  		/* Get the base inode. */
4e5e529ad684f1 Ingo Molnar        2006-03-23  1263  		mutex_lock(&tni->extent_lock);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1264  		if (tni->nr_extents >= 0)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1265  			base_tni = tni;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1266  		else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1267  			base_tni = tni->ext.base_ntfs_ino;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1268  			BUG_ON(!base_tni);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1269  		}
4e5e529ad684f1 Ingo Molnar        2006-03-23  1270  		mutex_unlock(&tni->extent_lock);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1271  		ntfs_debug("Unlocking %s inode 0x%lx.",
^1da177e4c3f41 Linus Torvalds     2005-04-16  1272  				tni == base_tni ? "base" : "extent",
^1da177e4c3f41 Linus Torvalds     2005-04-16  1273  				tni->mft_no);
4e5e529ad684f1 Ingo Molnar        2006-03-23  1274  		mutex_unlock(&tni->mrec_lock);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1275  		atomic_dec(&tni->count);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1276  		iput(VFS_I(base_tni));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1277  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1278  	SetPageUptodate(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1279  	kunmap(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1280  done:
^1da177e4c3f41 Linus Torvalds     2005-04-16  1281  	if (unlikely(err && err != -ENOMEM)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1282  		/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1283  		 * Set page error if there is only one ntfs record in the page.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1284  		 * Otherwise we would loose per-record granularity.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1285  		 */
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1286  		if (ni->itype.index.block_size == PAGE_SIZE)
^1da177e4c3f41 Linus Torvalds     2005-04-16  1287  			SetPageError(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1288  		NVolSetErrors(vol);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1289  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1290  	if (page_is_dirty) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1291  		ntfs_debug("Page still contains one or more dirty ntfs "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1292  				"records.  Redirtying the page starting at "
^1da177e4c3f41 Linus Torvalds     2005-04-16  1293  				"record 0x%lx.", page->index <<
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1294  				(PAGE_SHIFT - rec_size_bits));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1295  		redirty_page_for_writepage(wbc, page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1296  		unlock_page(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1297  	} else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  1298  		/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  1299  		 * Keep the VM happy.  This must be done otherwise the
^1da177e4c3f41 Linus Torvalds     2005-04-16  1300  		 * radix-tree tag PAGECACHE_TAG_DIRTY remains set even though
^1da177e4c3f41 Linus Torvalds     2005-04-16  1301  		 * the page is clean.
^1da177e4c3f41 Linus Torvalds     2005-04-16  1302  		 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  1303  		BUG_ON(PageWriteback(page));
^1da177e4c3f41 Linus Torvalds     2005-04-16  1304  		set_page_writeback(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1305  		unlock_page(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1306  		end_page_writeback(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  1307  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  1308  	if (likely(!err))
^1da177e4c3f41 Linus Torvalds     2005-04-16  1309  		ntfs_debug("Done.");
^1da177e4c3f41 Linus Torvalds     2005-04-16  1310  	return err;
^1da177e4c3f41 Linus Torvalds     2005-04-16  1311  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  1312  

:::::: The code at line 899 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102022212.g9mqIxIF-lkp%40intel.com.

--FL5UXtIhxfXey3p5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
2rMtD39vXrvr0HSQvnf7moBzvXRn+ssF39SVU6FOWWoDU9iX9cZiNSQTh26FGjAlNud0X8nc
cG4gqoPmJZ6o2iHzAzpcAjNQROIMpdCqPC9wtU7i9vHC2x+UuLAOfCIHx/lC7tQq/Fs97BgI
oVHrbn8oieslbC4z5uypYH4rG3VE2Wu1bpY9bvkD9Oe71XYXXkY3OWvQpPaALJs0vrEHmDWp
s9d3m7Vp4FGw7SaOvOPntFn1fWjJsp47e4gSl91SamAt9MYUkFbmFwk5l85ulZKZr6wKGyaW
QuMOb1OFx7bp0XtVgVHhzyl1Wz+Z7wLftZQ6y5Yv03gVLbzd8aBjokLHI2WQpdLbU1s8EY1E
Nm2IEbi3PKTAXqD+zRN26390XAYcBSX6WG3o0MTn0OgIJf/LUeg7rT1E0gI/JBB5Zk31eCFg
U0/paQsbPuertgo5s86pTSWZ7t3O+Ym1bXQZ3g36srkOLgzI/f3b9FaMEIhf7p/gCPpVnWD3
3+5f3/GU55JFVSaHQNkdqfkgFIzxYKzfvyvZTBduHG/22WVKd+Zqww0JgCp0am9DmkIlJ49j
khAzlMRMyjGBdBw5hoE4+2Ply4LKcBN02Z5JQCz8gCSUOtHUOIzvloFYzwa9JbRyYcKvgXEm
PbZAVzC0Xk6tH5YmozweuJmd920UWCX46RHi2I2HMSBaWCg15mw3jdVNJe12jfj4x9ffXTE4
f5EPCzWH25ImVxAmVeXduW5vIPmVVDV5Rxgk85LvLT48XAk+FJz9TaYrFOwuS337bzPu3q/M
aJwQUroW40Q4o9VNpQ2QOSkg8YhOtLOOJpN1XYynvfMJbb9AVILJTIoFgCBQN7wMYubiVdod
aIs+aDhFDnTM6W9D3WSqEgj+d8vFrHOqnETP96+vQjCVDUQ2DPnlVhzSMptqqAuT3Gp/p0RX
lJsN/MAvjY6YgO212z3xYZK37W0DiendfvpS7QTu93xy67dwk8hrN1Bnzg61bbxjdUrLzlYa
VwnLqTpNLecSicDsJ0pu7OCfhRmZYk45IgordOtKohJ8KM8XZkJIjKFmlLWQn08uh40X7241
+n41VBhLdhu+7V3OzKu7KN56hQnJcoeLhwqtZEqnrN6dXEuMVD5DsDsGZ8QR4Wxk8NUOhc0w
6U+tcsLIOovFRlQnR6+n6mI2+C2t3SHjVcOHFMwsDlz1yAJ1zdCfzcxU47aTmtf2Eqg8F9zW
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
kzJWrJSrQV/nLFJ9NkimJmvE8P8BdK7kFIbmAQA=

--FL5UXtIhxfXey3p5--
