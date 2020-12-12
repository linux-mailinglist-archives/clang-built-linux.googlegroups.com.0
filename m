Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOOY2L7AKGQEYNBIHYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6286D2D863E
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 12:40:42 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id o130sf5924432oig.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 03:40:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607773241; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rp5vNB5pJtxdtpLPIN+XO9QnFLDBfsmRwtxt0h3dAoXhzI2HhtEhz9BNEDUNXxIJRh
         KbasKs+FPoJLhwTu46j7ectwUlBRkzncQchUSzNfrbJMzAqsThJcEM5rh/S8GqT/bz9b
         Hs6GCDTtK+aw+vLHggE6fO0qwMvBczBwj7kGc07OpMoPCzd39Oi5L/HFNEHL8MvOkAk9
         F0XpkXI49wcvmKdlzPeSfdgL/5BRYa3wQSKD7zIfOOa9kZXsXe1PwQwRbtdC8m89b1cb
         Zic6df933B8ZSKOPW72YEXkgMzxiCFzHfbGPDASM3p8crrKWkJj3izS4yujx+Tjh3tmI
         GZVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=zi96lGFKdKIlekIs95BP55e2MI/CPh2gmMbO25NFsWk=;
        b=BB7dBZQQZXOwbrdaN8u9T/Nf/OXg21m8Sz0ZuHypsnjRl6z0hCUwy+E452TuLNdgzA
         wuzYP8IFj3RlHu2AYUN8FGjLMWjWrylAq9nxN0OA+ZKdm5OrOpRVUbIMEAipAqZUZa26
         FrxNByLUPeRlbzcWAUiJhNQTn00D/sQuGeD9c9lsVauq0vLiDO4N165KNNi4kmruX5pj
         4Xv012isANwEqbxs9NlnOtBOhCQ0+vQOWl9R2iq/CKB6JfkK5Q6gQyYyvMLNu79QwmUd
         I8+BGUrw+0l8iOAGhhCFpshHUuZtmcnJ2KN4p1948aMIwgDiXHvAQB9L5+9cVWCzV2GD
         /nWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zi96lGFKdKIlekIs95BP55e2MI/CPh2gmMbO25NFsWk=;
        b=eSDfHvmLmROpiCOqvet5w2mZfklq84aqEiEugT5OmnjW1HDeGsn2pGjvUbybw+7nDs
         W24Fd7UyWbYoBE9f4XfYLUq5k/3AuO2Jb9BFALb+e+ayttGb7MWAFhhS6XSMl6OXzZgu
         ObdyRldoWoO4gb94Uv/fPPag4wnBndOaoPHoV+Iiw5VYelXLjklTkyoKiYK5zY+DOxsE
         mAMfaBhki3epiufmUbxziXQaiD5T9J4AJ103ONUuiRf/66ghXnbYNSOcz4jq0nFvaS+u
         Ijy2ErQQ+oKDTxKiLLDt5HekhyDTK2WW27LPC59pHQU8dzXL5iQVNSJjCR2ilQ727sGp
         yR4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zi96lGFKdKIlekIs95BP55e2MI/CPh2gmMbO25NFsWk=;
        b=E5CLnvIvMUmFF3CKnd8CiU7Uy6RPR5JV6Vavq6Pi2WqFFgVPiYpjN+VtxFlBWMRIB5
         MYOXkOZB7boEnpY9761Mr2cwMsQOoReVQ/y7BX83dqYSgRJzLpBv9ALTJg9GG6jKZoBS
         bCnPODhgIUo3GBdehLy8Z1FJWy0iHggj6UPHLBCfoXXcpdrlsrYtuB6lMkdGrtOevFJQ
         X3XXw4q+o6Ndi/d/MZW3kkOPREh5QrllRvipNPNNVX8f63QK4qyquWAPRzvNgKsjlISA
         qfQ0Q33ck8dVe6CZbyrTEGROOusJX0ASNSeDFTNnfWpyXIIKuMJX0Tngdshxjyj9/T3R
         doEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kHnd/INI9XgPcUD62vN/VcFrNFIOpMRn/HSVdeQiJo59DkYFB
	oK82Wg0aufxe9pw/oxnA2QQ=
X-Google-Smtp-Source: ABdhPJwFR+n8XItslkJNsG8AZCZa4rRbS0ZbIOwoQPbtJLDim/FxQ9KHFboI4CvOBDFk+kAMYrbzDQ==
X-Received: by 2002:a9d:3664:: with SMTP id w91mr13179447otb.227.1607773241283;
        Sat, 12 Dec 2020 03:40:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:8cb:: with SMTP id 194ls2964912oii.3.gmail; Sat, 12 Dec
 2020 03:40:40 -0800 (PST)
X-Received: by 2002:aca:5204:: with SMTP id g4mr12600048oib.91.1607773240717;
        Sat, 12 Dec 2020 03:40:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607773240; cv=none;
        d=google.com; s=arc-20160816;
        b=BBlFFAMdADIxojRU4Cujmyq8iOzUDWpYdAULe1fM776cBvXHqvEF+K6SSmIg2nLmTh
         bHRcFEBHHIhHvqdA9zTG3v2oQ8xkFNfaL5ZlfvE/nH+b9HGhBkkflVASK/Pqni9aQXEo
         1WNUL64qFqmNIlpZdxDv4Mjf74fAzrTHbqquxO6U1wkRsE2TkwNxgvdrAqSHuobqg6U3
         sxQCoKPhJgA4IsEOrRVUy+cDQ5IW33MYJqUj230lj55zRymd8e/+/rLJOLo7AlemYnuO
         avAfrWKPf6SmVVoebXp5hzCa2nRO8FEVzGTe9pAX5Y2sgI+hZJMQNbn+em276D8gSl2Q
         Fprw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=nZll/jBtLHNOAS9n2MPIlE5ibbN55aIvpkvOsa+0/1Y=;
        b=cXH1XFXulQfFtPdKhHlw2VIeTNWwWTyLyHeB4k1oozBqXOpqDOoTIOwaMCtn1kj+i8
         xWI3cuARP8+zfSNxMO5THBqa/3Guikaa9yG4a6DSL9Th2Kjlo3firoQf/LYPJ2Wnt865
         VkXTrcFrWQ8T+kloBKliHH3WMyzu4iVfXhuJiQ2UICOgHM221POMoViDQliEmPK1WerK
         gcIBpACzuaUUBV209LkCkfhj84OuZc3dAvyZ0jOOfFZBNLa+JCq5wwYyGK86Xti8x8Ju
         HCaoTAYxsK7a7k9PpXeH1W851pmsq0R5TBCDjRvVksfucG4Y0brdayWm/harWEKeY+Gc
         tavw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id w68si908912oia.4.2020.12.12.03.40.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 03:40:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 6aR6eKxoByxiZ4qDKVB+xuPWRBoWkEmo48mQK/vjNP0QG1zCK/UZbeI/BVZIK13nN/hpVBvnji
 V/emtJ1P3pKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="173774912"
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="173774912"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2020 03:40:39 -0800
IronPort-SDR: ATRYx8qnh8IHGQ+qRhgc8yPzU+ycHtmaB+HoeMskCO+SyLSRVJFsmUN5hB9dZWvDPRy/ITQyAa
 I4qNMquQ3P6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="443893260"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2020 03:40:36 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ko3GO-0001Jp-BR; Sat, 12 Dec 2020 11:40:36 +0000
Date: Sat, 12 Dec 2020 19:40:21 +0800
From: kernel test robot <lkp@intel.com>
To: Steve French <stfrench@microsoft.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-cifs@vger.kernel.org, samba-technical@lists.samba.org
Subject: [cifs:for-next 19/27] fs/cifs/cifsproto.h:96:4: error: unknown type
 name 'mid_receive_t'
Message-ID: <202012121916.sUrhcp9C-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.samba.org/sfrench/cifs-2.6.git for-next
head:   0993a0c9c281b516fe97dc77646b87d45c3fbf17
commit: b69c063066231af65879321fd53cd371c106fa82 [19/27] cifs: cleanup misc.c
config: x86_64-randconfig-a004-20201209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 84c09ab44599ece409e4e19761288ddf796fceec)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add cifs git://git.samba.org/sfrench/cifs-2.6.git
        git fetch --no-tags cifs for-next
        git checkout b69c063066231af65879321fd53cd371c106fa82
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from fs/cifs/unc.c:11:
>> fs/cifs/cifsproto.h:44:28: warning: declaration of 'struct TCP_Server_Info' will not be visible outside of this function [-Wvisibility]
   extern int smb_send(struct TCP_Server_Info *, struct smb_hdr *,
                              ^
>> fs/cifs/cifsproto.h:76:17: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
                                        struct cifs_sb_info *cifs_sb,
                                               ^
>> fs/cifs/cifsproto.h:77:17: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
                                        struct cifs_tcon *tcon,
                                               ^
>> fs/cifs/cifsproto.h:81:38: warning: declaration of 'struct dfs_info3_param' will not be visible outside of this function [-Wvisibility]
                   const char *fullpath, const struct dfs_info3_param *ref);
                                                      ^
   fs/cifs/cifsproto.h:84:13: warning: declaration of 'struct TCP_Server_Info' will not be visible outside of this function [-Wvisibility]
                                           struct TCP_Server_Info *server);
                                                  ^
   fs/cifs/cifsproto.h:89:40: warning: declaration of 'struct TCP_Server_Info' will not be visible outside of this function [-Wvisibility]
   extern int cifs_handle_standard(struct TCP_Server_Info *server,
                                          ^
>> fs/cifs/cifsproto.h:92:38: warning: declaration of 'struct sockaddr' will not be visible outside of this function [-Wvisibility]
   extern bool cifs_match_ipaddr(struct sockaddr *srcaddr, struct sockaddr *rhs);
                                        ^
   fs/cifs/cifsproto.h:93:47: warning: declaration of 'struct TCP_Server_Info' will not be visible outside of this function [-Wvisibility]
   extern int cifs_discard_remaining_data(struct TCP_Server_Info *server);
                                                 ^
   fs/cifs/cifsproto.h:94:35: warning: declaration of 'struct TCP_Server_Info' will not be visible outside of this function [-Wvisibility]
   extern int cifs_call_async(struct TCP_Server_Info *server,
                                     ^
>> fs/cifs/cifsproto.h:96:4: error: unknown type name 'mid_receive_t'
                           mid_receive_t *receive, mid_callback_t *callback,
                           ^
>> fs/cifs/cifsproto.h:96:28: error: unknown type name 'mid_callback_t'; did you mean 'rcu_callback_t'?
                           mid_receive_t *receive, mid_callback_t *callback,
                                                   ^~~~~~~~~~~~~~
                                                   rcu_callback_t
   include/linux/types.h:222:16: note: 'rcu_callback_t' declared here
   typedef void (*rcu_callback_t)(struct rcu_head *head);
                  ^
   In file included from fs/cifs/unc.c:11:
>> fs/cifs/cifsproto.h:97:4: error: unknown type name 'mid_handle_t'
                           mid_handle_t *handle, void *cbdata, const int flags,
                           ^
>> fs/cifs/cifsproto.h:98:17: warning: declaration of 'struct cifs_credits' will not be visible outside of this function [-Wvisibility]
                           const struct cifs_credits *exist_credits);
                                        ^
>> fs/cifs/cifsproto.h:99:57: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern struct TCP_Server_Info *cifs_pick_channel(struct cifs_ses *ses);
                                                           ^
   fs/cifs/cifsproto.h:100:58: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int cifs_send_recv(const unsigned int xid, struct cifs_ses *ses,
                                                            ^
>> fs/cifs/cifsproto.h:103:30: warning: declaration of 'struct kvec' will not be visible outside of this function [-Wvisibility]
                             const int flags, struct kvec *resp_iov);
                                                     ^
   fs/cifs/cifsproto.h:104:62: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int compound_send_recv(const unsigned int xid, struct cifs_ses *ses,
                                                                ^
   fs/cifs/cifsproto.h:108:17: warning: declaration of 'struct kvec' will not be visible outside of this function [-Wvisibility]
                                 struct kvec *resp_iov);
                                        ^
   fs/cifs/cifsproto.h:109:62: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int SendReceive(const unsigned int /* xid */ , struct cifs_ses *,
                                                                ^
   fs/cifs/cifsproto.h:113:60: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int SendReceiveNoRsp(const unsigned int xid, struct cifs_ses *ses,
                                                              ^
   fs/cifs/cifsproto.h:115:54: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern struct mid_q_entry *cifs_setup_request(struct cifs_ses *,
                                                        ^
   fs/cifs/cifsproto.h:124:13: warning: declaration of 'struct cifs_credits' will not be visible outside of this function [-Wvisibility]
                                    struct cifs_credits *credits);
                                           ^
   fs/cifs/cifsproto.h:125:63: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int SendReceive2(const unsigned int /* xid */ , struct cifs_ses *,
                                                                 ^
   fs/cifs/cifsproto.h:126:11: warning: declaration of 'struct kvec' will not be visible outside of this function [-Wvisibility]
                           struct kvec *, int /* nvec to send */,
                                  ^
   fs/cifs/cifsproto.h:130:11: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
                           struct cifs_tcon *ptcon,
                                  ^
   fs/cifs/cifsproto.h:137:32: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
   extern bool backup_cred(struct cifs_sb_info *);
                                  ^
>> fs/cifs/cifsproto.h:138:43: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern bool is_size_safe_to_change(struct cifsInodeInfo *, __u64 eof);
                                             ^
   fs/cifs/cifsproto.h:139:36: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern void cifs_update_eof(struct cifsInodeInfo *cifsi, loff_t offset,
                                      ^
   fs/cifs/cifsproto.h:141:55: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern struct cifsFileInfo *find_writable_file(struct cifsInodeInfo *, int);
                                                         ^
   fs/cifs/cifsproto.h:142:42: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern int cifs_get_writable_file(struct cifsInodeInfo *cifs_inode,
                                            ^
   fs/cifs/cifsproto.h:145:42: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
   extern int cifs_get_writable_path(struct cifs_tcon *tcon, const char *name,
                                            ^
   fs/cifs/cifsproto.h:148:55: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern struct cifsFileInfo *find_readable_file(struct cifsInodeInfo *, bool);
                                                         ^
   fs/cifs/cifsproto.h:149:42: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
   extern int cifs_get_readable_path(struct cifs_tcon *tcon, const char *name,
                                            ^
   fs/cifs/cifsproto.h:154:40: warning: declaration of 'struct sockaddr' will not be visible outside of this function [-Wvisibility]
   extern int cifs_convert_address(struct sockaddr *dst, const char *src, int len);
                                          ^
   fs/cifs/cifsproto.h:155:34: warning: declaration of 'struct sockaddr' will not be visible outside of this function [-Wvisibility]
   extern void cifs_set_port(struct sockaddr *addr, const unsigned short int port);
                                    ^
   fs/cifs/cifsproto.h:159:21: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
                               const struct cifs_tcon *, int /* length of
                                            ^
   fs/cifs/cifsproto.h:162:12: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
                                   struct cifs_ses *ses,
                                          ^
   fs/cifs/cifsproto.h:166:58: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int CIFS_SessSetup(const unsigned int xid, struct cifs_ses *ses,
                                                            ^
   fs/cifs/cifsproto.h:172:42: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern void cifs_set_oplock_level(struct cifsInodeInfo *cinode, __u32 oplock);
                                            ^
   fs/cifs/cifsproto.h:173:35: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern int cifs_get_writer(struct cifsInodeInfo *cinode);
                                     ^
   fs/cifs/cifsproto.h:174:36: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern void cifs_put_writer(struct cifsInodeInfo *cinode);
                                      ^
   fs/cifs/cifsproto.h:175:43: warning: declaration of 'struct cifsInodeInfo' will not be visible outside of this function [-Wvisibility]
   extern void cifs_done_oplock_break(struct cifsInodeInfo *cinode);
                                             ^
>> fs/cifs/cifsproto.h:177:16: warning: declaration of 'struct file_lock' will not be visible outside of this function [-Wvisibility]
                                struct file_lock *flock, const unsigned int xid);
                                       ^
>> fs/cifs/cifsproto.h:181:54: warning: declaration of 'struct cifs_fid' will not be visible outside of this function [-Wvisibility]
   extern struct cifsFileInfo *cifs_new_fileinfo(struct cifs_fid *fid,
                                                        ^
>> fs/cifs/cifsproto.h:183:19: warning: declaration of 'struct tcon_link' will not be visible outside of this function [-Wvisibility]
                                                 struct tcon_link *tlink,
                                                        ^
>> fs/cifs/cifsproto.h:189:56: warning: declaration of 'struct cifs_fattr' will not be visible outside of this function [-Wvisibility]
   void cifs_fill_uniqueid(struct super_block *sb, struct cifs_fattr *fattr);
                                                          ^
   fs/cifs/cifsproto.h:190:45: warning: declaration of 'struct cifs_fattr' will not be visible outside of this function [-Wvisibility]
   extern void cifs_unix_basic_to_fattr(struct cifs_fattr *fattr,
                                               ^
>> fs/cifs/cifsproto.h:191:10: error: unknown type name 'FILE_UNIX_BASIC_INFO'
                                        FILE_UNIX_BASIC_INFO *info,
                                        ^
   fs/cifs/cifsproto.h:192:17: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
                                        struct cifs_sb_info *cifs_sb);
                                               ^
   fs/cifs/cifsproto.h:193:43: warning: declaration of 'struct cifs_fattr' will not be visible outside of this function [-Wvisibility]
   extern void cifs_dir_info_to_fattr(struct cifs_fattr *, FILE_DIRECTORY_INFO *,
                                             ^
>> fs/cifs/cifsproto.h:193:57: error: unknown type name 'FILE_DIRECTORY_INFO'
   extern void cifs_dir_info_to_fattr(struct cifs_fattr *, FILE_DIRECTORY_INFO *,
                                                           ^
   fs/cifs/cifsproto.h:194:13: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
                                           struct cifs_sb_info *);
                                                  ^
   fs/cifs/cifsproto.h:195:61: warning: declaration of 'struct cifs_fattr' will not be visible outside of this function [-Wvisibility]
   extern void cifs_fattr_to_inode(struct inode *inode, struct cifs_fattr *fattr);
                                                               ^
   fs/cifs/cifsproto.h:197:18: warning: declaration of 'struct cifs_fattr' will not be visible outside of this function [-Wvisibility]
                                  struct cifs_fattr *fattr);
                                         ^
>> fs/cifs/cifsproto.h:200:11: error: unknown type name 'FILE_ALL_INFO'
                                  FILE_ALL_INFO *data, struct super_block *sb,
                                  ^
   fs/cifs/cifsproto.h:201:33: warning: declaration of 'struct cifs_fid' will not be visible outside of this function [-Wvisibility]
                                  int xid, const struct cifs_fid *fid);
                                                        ^
   fs/cifs/cifsproto.h:212:29: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
   extern int sid_to_id(struct cifs_sb_info *cifs_sb, struct cifs_sid *psid,
                               ^
>> fs/cifs/cifsproto.h:212:59: warning: declaration of 'struct cifs_sid' will not be visible outside of this function [-Wvisibility]
   extern int sid_to_id(struct cifs_sb_info *cifs_sb, struct cifs_sid *psid,
                                                             ^
   fs/cifs/cifsproto.h:213:12: warning: declaration of 'struct cifs_fattr' will not be visible outside of this function [-Wvisibility]
                                   struct cifs_fattr *fattr, uint sidtype);
                                          ^
   fs/cifs/cifsproto.h:214:37: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
   extern int cifs_acl_to_fattr(struct cifs_sb_info *cifs_sb,
                                       ^
   fs/cifs/cifsproto.h:215:17: warning: declaration of 'struct cifs_fattr' will not be visible outside of this function [-Wvisibility]
                                 struct cifs_fattr *fattr, struct inode *inode,
                                        ^
   fs/cifs/cifsproto.h:217:41: warning: declaration of 'struct cifs_fid' will not be visible outside of this function [-Wvisibility]
                                 const char *path, const struct cifs_fid *pfid);
                                                                ^
   fs/cifs/cifsproto.h:220:46: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
   extern struct cifs_ntsd *get_cifs_acl(struct cifs_sb_info *, struct inode *,
                                                ^
   fs/cifs/cifsproto.h:222:53: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
   extern struct cifs_ntsd *get_cifs_acl_by_fid(struct cifs_sb_info *,
                                                       ^
   fs/cifs/cifsproto.h:223:20: warning: declaration of 'struct cifs_fid' will not be visible outside of this function [-Wvisibility]
                                                   const struct cifs_fid *, u32 *);
                                                                ^
   fs/cifs/cifsproto.h:226:48: warning: declaration of 'struct cifs_ace' will not be visible outside of this function [-Wvisibility]
   extern unsigned int setup_authusers_ACE(struct cifs_ace *pace);
                                                  ^
   fs/cifs/cifsproto.h:227:51: warning: declaration of 'struct cifs_ace' will not be visible outside of this function [-Wvisibility]
   extern unsigned int setup_special_mode_ACE(struct cifs_ace *pace, __u64 nmode);
                                                     ^
   fs/cifs/cifsproto.h:228:57: warning: declaration of 'struct cifs_ace' will not be visible outside of this function [-Wvisibility]
   extern unsigned int setup_special_user_owner_ACE(struct cifs_ace *pace);
                                                           ^
   fs/cifs/cifsproto.h:238:18: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
                                  struct cifs_sb_info *cifs_sb);
                                         ^
   fs/cifs/cifsproto.h:241:30: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
   extern int cifs_mount(struct cifs_sb_info *cifs_sb, struct smb3_fs_context *ctx);
                                ^
   fs/cifs/cifsproto.h:242:32: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
   extern void cifs_umount(struct cifs_sb_info *);
                                  ^
   fs/cifs/cifsproto.h:243:49: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
   extern void cifs_mark_open_files_invalid(struct cifs_tcon *tcon);
                                                   ^
   fs/cifs/cifsproto.h:244:51: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
   extern void cifs_reopen_persistent_handles(struct cifs_tcon *tcon);
                                                     ^
   fs/cifs/cifsproto.h:248:16: warning: declaration of 'struct cifsLockInfo' will not be visible outside of this function [-Wvisibility]
                                       struct cifsLockInfo **conf_lock,
                                              ^
   fs/cifs/cifsproto.h:250:42: warning: declaration of 'struct cifs_fid' will not be visible outside of this function [-Wvisibility]
   extern void cifs_add_pending_open(struct cifs_fid *fid,
                                            ^
   fs/cifs/cifsproto.h:251:14: warning: declaration of 'struct tcon_link' will not be visible outside of this function [-Wvisibility]
                                     struct tcon_link *tlink,
                                            ^
   fs/cifs/cifsproto.h:252:14: warning: declaration of 'struct cifs_pending_open' will not be visible outside of this function [-Wvisibility]
                                     struct cifs_pending_open *open);
                                            ^
   fs/cifs/cifsproto.h:253:49: warning: declaration of 'struct cifs_fid' will not be visible outside of this function [-Wvisibility]
   extern void cifs_add_pending_open_locked(struct cifs_fid *fid,
                                                   ^
   fs/cifs/cifsproto.h:254:14: warning: declaration of 'struct tcon_link' will not be visible outside of this function [-Wvisibility]
                                            struct tcon_link *tlink,
                                                   ^
   fs/cifs/cifsproto.h:255:14: warning: declaration of 'struct cifs_pending_open' will not be visible outside of this function [-Wvisibility]
                                            struct cifs_pending_open *open);
                                                   ^
   fs/cifs/cifsproto.h:256:42: warning: declaration of 'struct cifs_pending_open' will not be visible outside of this function [-Wvisibility]
   extern void cifs_del_pending_open(struct cifs_pending_open *open);
                                            ^
   fs/cifs/cifsproto.h:260:34: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
   extern void cifs_put_tcon(struct cifs_tcon *tcon);
                                    ^
   fs/cifs/cifsproto.h:273:42: warning: declaration of 'struct cifsLockInfo' will not be visible outside of this function [-Wvisibility]
   extern void cifs_del_lock_waiters(struct cifsLockInfo *lock);
                                            ^
   fs/cifs/cifsproto.h:275:61: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
   extern int cifs_tree_connect(const unsigned int xid, struct cifs_tcon *tcon,
                                                               ^
   fs/cifs/cifsproto.h:279:15: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
                                      struct cifs_ses *ses);
                                             ^
   fs/cifs/cifsproto.h:280:62: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int cifs_setup_session(const unsigned int xid, struct cifs_ses *ses,
                                                                ^
   fs/cifs/cifsproto.h:283:60: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int CIFSSMBNegotiate(const unsigned int xid, struct cifs_ses *ses);
                                                              ^
   fs/cifs/cifsproto.h:285:52: warning: declaration of 'struct cifs_ses' will not be visible outside of this function [-Wvisibility]
   extern int CIFSTCon(const unsigned int xid, struct cifs_ses *ses,
                                                      ^
   fs/cifs/cifsproto.h:286:32: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
                       const char *tree, struct cifs_tcon *tcon,
                                                ^
   fs/cifs/cifsproto.h:289:57: warning: declaration of 'struct cifs_tcon' will not be visible outside of this function [-Wvisibility]
   extern int CIFSFindFirst(const unsigned int xid, struct cifs_tcon *tcon,
                                                           ^
   fs/cifs/cifsproto.h:290:34: warning: declaration of 'struct cifs_sb_info' will not be visible outside of this function [-Wvisibility]
                   const char *searchName, struct cifs_sb_info *cifs_sb,

vim +/mid_receive_t +96 fs/cifs/cifsproto.h

^1da177e4c3f41 Linus Torvalds             2005-04-16   32  
^1da177e4c3f41 Linus Torvalds             2005-04-16   33  /*
^1da177e4c3f41 Linus Torvalds             2005-04-16   34   *****************************************************************
^1da177e4c3f41 Linus Torvalds             2005-04-16   35   * All Prototypes
^1da177e4c3f41 Linus Torvalds             2005-04-16   36   *****************************************************************
^1da177e4c3f41 Linus Torvalds             2005-04-16   37   */
^1da177e4c3f41 Linus Torvalds             2005-04-16   38  
^1da177e4c3f41 Linus Torvalds             2005-04-16   39  extern struct smb_hdr *cifs_buf_get(void);
^1da177e4c3f41 Linus Torvalds             2005-04-16   40  extern void cifs_buf_release(void *);
^1da177e4c3f41 Linus Torvalds             2005-04-16   41  extern struct smb_hdr *cifs_small_buf_get(void);
^1da177e4c3f41 Linus Torvalds             2005-04-16   42  extern void cifs_small_buf_release(void *);
6d81ed1ec22dbe Sachin Prabhu              2014-06-16   43  extern void free_rsp_buf(int, void *);
0496e02d8791e7 Jeff Layton                2008-12-30  @44  extern int smb_send(struct TCP_Server_Info *, struct smb_hdr *,
0496e02d8791e7 Jeff Layton                2008-12-30   45  			unsigned int /* length */);
6d5786a34d98bf Pavel Shilovsky            2012-06-20   46  extern unsigned int _get_xid(void);
6d5786a34d98bf Pavel Shilovsky            2012-06-20   47  extern void _free_xid(unsigned int);
6d5786a34d98bf Pavel Shilovsky            2012-06-20   48  #define get_xid()							\
b6b38f704a8193 Joe Perches                2010-04-21   49  ({									\
6d5786a34d98bf Pavel Shilovsky            2012-06-20   50  	unsigned int __xid = _get_xid();				\
a0a3036b81f1f6 Joe Perches                2020-04-14   51  	cifs_dbg(FYI, "VFS: in %s as Xid: %u with uid: %d\n",		\
dbfb98af18194c Eric W. Biederman          2013-02-06   52  		 __func__, __xid,					\
dbfb98af18194c Eric W. Biederman          2013-02-06   53  		 from_kuid(&init_user_ns, current_fsuid()));		\
d683bcd3e5d157 Steve French               2018-05-19   54  	trace_smb3_enter(__xid, __func__);				\
b6b38f704a8193 Joe Perches                2010-04-21   55  	__xid;								\
b6b38f704a8193 Joe Perches                2010-04-21   56  })
b6b38f704a8193 Joe Perches                2010-04-21   57  
6d5786a34d98bf Pavel Shilovsky            2012-06-20   58  #define free_xid(curr_xid)						\
b6b38f704a8193 Joe Perches                2010-04-21   59  do {									\
6d5786a34d98bf Pavel Shilovsky            2012-06-20   60  	_free_xid(curr_xid);						\
a0a3036b81f1f6 Joe Perches                2020-04-14   61  	cifs_dbg(FYI, "VFS: leaving %s (xid = %u) rc = %d\n",		\
b6b38f704a8193 Joe Perches                2010-04-21   62  		 __func__, curr_xid, (int)rc);				\
d683bcd3e5d157 Steve French               2018-05-19   63  	if (rc)								\
d683bcd3e5d157 Steve French               2018-05-19   64  		trace_smb3_exit_err(curr_xid, __func__, (int)rc);	\
d683bcd3e5d157 Steve French               2018-05-19   65  	else								\
d683bcd3e5d157 Steve French               2018-05-19   66  		trace_smb3_exit_done(curr_xid, __func__);		\
b6b38f704a8193 Joe Perches                2010-04-21   67  } while (0)
4d79dba0e00749 Shirish Pargaonkar         2011-04-27   68  extern int init_cifs_idmap(void);
4d79dba0e00749 Shirish Pargaonkar         2011-04-27   69  extern void exit_cifs_idmap(void);
b74cb9a80268be Sachin Prabhu              2016-05-17   70  extern int init_cifs_spnego(void);
b74cb9a80268be Sachin Prabhu              2016-05-17   71  extern void exit_cifs_spnego(void);
7f57356b70dda0 Steve French               2005-08-30   72  extern char *build_path_from_dentry(struct dentry *);
268a635d414df4 Aurelien Aptel             2017-02-13   73  extern char *build_path_from_dentry_optional_prefix(struct dentry *direntry,
268a635d414df4 Aurelien Aptel             2017-02-13   74  						    bool prefix);
2727ef44ea4615 Ronnie Sahlberg            2020-12-09   75  extern char *cifs_build_path_to_root(struct smb3_fs_context *ctx,
6d3ea7e4975aed Steve French               2012-11-28  @76  				     struct cifs_sb_info *cifs_sb,
374402a2a1dfbb Sachin Prabhu              2016-12-15  @77  				     struct cifs_tcon *tcon,
374402a2a1dfbb Sachin Prabhu              2016-12-15   78  				     int add_treename);
^1da177e4c3f41 Linus Torvalds             2005-04-16   79  extern char *build_wildcard_path_from_dentry(struct dentry *direntry);
c6c00919ab1671 Steve French               2009-03-18   80  extern char *cifs_compose_mount_options(const char *sb_mountdata,
75df213664c3e1 Ronnie Sahlberg            2020-12-10  @81  		const char *fullpath, const struct dfs_info3_param *ref);
99ee4dbd7c99c2 Steve French               2007-02-27   82  /* extern void renew_parental_timestamps(struct dentry *direntry);*/
a6827c184ea9f5 Jeff Layton                2011-01-11   83  extern struct mid_q_entry *AllocMidQEntry(const struct smb_hdr *smb_buffer,
a6827c184ea9f5 Jeff Layton                2011-01-11   84  					struct TCP_Server_Info *server);
766fdbb57fdb1e Jeff Layton                2011-01-11   85  extern void DeleteMidQEntry(struct mid_q_entry *midEntry);
3c1bf7e48e9e46 Pavel Shilovsky            2012-09-18   86  extern void cifs_delete_mid(struct mid_q_entry *mid);
696e420bb2a662 Lars Persson               2018-06-25   87  extern void cifs_mid_q_entry_release(struct mid_q_entry *midEntry);
2dc7e1c0331694 Pavel Shilovsky            2011-12-26   88  extern void cifs_wake_up_task(struct mid_q_entry *mid);
4326ed2f6a16ae Pavel Shilovsky            2016-11-17   89  extern int cifs_handle_standard(struct TCP_Server_Info *server,
4326ed2f6a16ae Pavel Shilovsky            2016-11-17   90  				struct mid_q_entry *mid);
46711d0f0e67bd Ronnie Sahlberg            2020-11-05   91  extern int smb3_parse_devname(const char *devname, struct smb3_fs_context *ctx);
e4af35fa55b072 Paulo Alcantara            2020-05-19  @92  extern bool cifs_match_ipaddr(struct sockaddr *srcaddr, struct sockaddr *rhs);
350be257ea8302 Pavel Shilovsky            2017-04-10   93  extern int cifs_discard_remaining_data(struct TCP_Server_Info *server);
fec344e3f31aa9 Jeff Layton                2012-09-18   94  extern int cifs_call_async(struct TCP_Server_Info *server,
fec344e3f31aa9 Jeff Layton                2012-09-18   95  			struct smb_rqst *rqst,
fec344e3f31aa9 Jeff Layton                2012-09-18  @96  			mid_receive_t *receive, mid_callback_t *callback,
3349c3a79fb5d7 Pavel Shilovsky            2019-01-15  @97  			mid_handle_t *handle, void *cbdata, const int flags,
3349c3a79fb5d7 Pavel Shilovsky            2019-01-15  @98  			const struct cifs_credits *exist_credits);
5f68ea4aa98bcd Aurelien Aptel             2020-04-22  @99  extern struct TCP_Server_Info *cifs_pick_channel(struct cifs_ses *ses);
b8f57ee8aad414 Pavel Shilovsky            2016-11-23  100  extern int cifs_send_recv(const unsigned int xid, struct cifs_ses *ses,
352d96f3acc6e0 Aurelien Aptel             2020-05-31  101  			  struct TCP_Server_Info *server,
b8f57ee8aad414 Pavel Shilovsky            2016-11-23  102  			  struct smb_rqst *rqst, int *resp_buf_type,
b8f57ee8aad414 Pavel Shilovsky            2016-11-23 @103  			  const int flags, struct kvec *resp_iov);
e0bba0b8548179 Ronnie Sahlberg            2018-08-01  104  extern int compound_send_recv(const unsigned int xid, struct cifs_ses *ses,
352d96f3acc6e0 Aurelien Aptel             2020-05-31  105  			      struct TCP_Server_Info *server,
e0bba0b8548179 Ronnie Sahlberg            2018-08-01  106  			      const int flags, const int num_rqst,
e0bba0b8548179 Ronnie Sahlberg            2018-08-01  107  			      struct smb_rqst *rqst, int *resp_buf_type,
e0bba0b8548179 Ronnie Sahlberg            2018-08-01  108  			      struct kvec *resp_iov);
96daf2b09178d8 Steve French               2011-05-27  109  extern int SendReceive(const unsigned int /* xid */ , struct cifs_ses *,
^1da177e4c3f41 Linus Torvalds             2005-04-16  110  			struct smb_hdr * /* input */ ,
^1da177e4c3f41 Linus Torvalds             2005-04-16  111  			struct smb_hdr * /* out */ ,
a891f0f895f4a7 Pavel Shilovsky            2012-05-23  112  			int * /* bytes returned */ , const int);
96daf2b09178d8 Steve French               2011-05-27  113  extern int SendReceiveNoRsp(const unsigned int xid, struct cifs_ses *ses,
792af7b05b8a78 Pavel Shilovsky            2012-03-23  114  			    char *in_buf, int flags);
fec344e3f31aa9 Jeff Layton                2012-09-18  115  extern struct mid_q_entry *cifs_setup_request(struct cifs_ses *,
f780bd3fef17c4 Aurelien Aptel             2019-09-20  116  				struct TCP_Server_Info *,
fec344e3f31aa9 Jeff Layton                2012-09-18  117  				struct smb_rqst *);
fec344e3f31aa9 Jeff Layton                2012-09-18  118  extern struct mid_q_entry *cifs_setup_async_request(struct TCP_Server_Info *,
fec344e3f31aa9 Jeff Layton                2012-09-18  119  						struct smb_rqst *);
2c8f981d93f830 Jeff Layton                2011-05-19  120  extern int cifs_check_receive(struct mid_q_entry *mid,
2c8f981d93f830 Jeff Layton                2011-05-19  121  			struct TCP_Server_Info *server, bool log_error);
cb7e9eabb2b584 Pavel Shilovsky            2014-06-05  122  extern int cifs_wait_mtu_credits(struct TCP_Server_Info *server,
cb7e9eabb2b584 Pavel Shilovsky            2014-06-05  123  				 unsigned int size, unsigned int *num,
335b7b62ffb69d Pavel Shilovsky            2019-01-16  124  				 struct cifs_credits *credits);
96daf2b09178d8 Steve French               2011-05-27  125  extern int SendReceive2(const unsigned int /* xid */ , struct cifs_ses *,
84afc29b185334 Steve French               2005-12-02  126  			struct kvec *, int /* nvec to send */,
da502f7df03d2d Pavel Shilovsky            2016-10-25  127  			int * /* type of buf returned */, const int flags,
da502f7df03d2d Pavel Shilovsky            2016-10-25  128  			struct kvec * /* resp vec */);
ad7a2926b9e53c Steve French               2008-02-07  129  extern int SendReceiveBlockingLock(const unsigned int xid,
96daf2b09178d8 Steve French               2011-05-27  130  			struct cifs_tcon *ptcon,
ad7a2926b9e53c Steve French               2008-02-07  131  			struct smb_hdr *in_buf ,
ad7a2926b9e53c Steve French               2008-02-07  132  			struct smb_hdr *out_buf,
ad7a2926b9e53c Steve French               2008-02-07  133  			int *bytes_returned);
28ea5290d78a7f Pavel Shilovsky            2012-05-23  134  extern int cifs_reconnect(struct TCP_Server_Info *server);
373512ec5c105e Steve French               2015-12-18  135  extern int checkSMB(char *buf, unsigned int len, struct TCP_Server_Info *srvr);
d4e4854fd1c85a Pavel Shilovsky            2012-03-23  136  extern bool is_valid_oplock_break(char *, struct TCP_Server_Info *);
3d3ea8e64efbeb Shirish Pargaonkar         2011-09-26  137  extern bool backup_cred(struct cifs_sb_info *);
4b18f2a9c3964f Steve French               2008-04-29 @138  extern bool is_size_safe_to_change(struct cifsInodeInfo *, __u64 eof);
72432ffcf555de Pavel Shilovsky            2011-01-24  139  extern void cifs_update_eof(struct cifsInodeInfo *cifsi, loff_t offset,
72432ffcf555de Pavel Shilovsky            2011-01-24  140  			    unsigned int bytes_written);
86f740f2aed5ea Aurelien Aptel             2020-02-21  141  extern struct cifsFileInfo *find_writable_file(struct cifsInodeInfo *, int);
fe768d51c832eb Pavel Shilovsky            2019-01-29  142  extern int cifs_get_writable_file(struct cifsInodeInfo *cifs_inode,
86f740f2aed5ea Aurelien Aptel             2020-02-21  143  				  int flags,
fe768d51c832eb Pavel Shilovsky            2019-01-29  144  				  struct cifsFileInfo **ret_file);
8de9e86c67baa7 Ronnie Sahlberg            2019-08-30  145  extern int cifs_get_writable_path(struct cifs_tcon *tcon, const char *name,
86f740f2aed5ea Aurelien Aptel             2020-02-21  146  				  int flags,
8de9e86c67baa7 Ronnie Sahlberg            2019-08-30  147  				  struct cifsFileInfo **ret_file);
6508d904e6fb66 Jeff Layton                2010-09-29  148  extern struct cifsFileInfo *find_readable_file(struct cifsInodeInfo *, bool);
496902dc173dea Ronnie Sahlberg            2019-09-09  149  extern int cifs_get_readable_path(struct cifs_tcon *tcon, const char *name,
496902dc173dea Ronnie Sahlberg            2019-09-09  150  				  struct cifsFileInfo **ret_file);
9ec672bd17131f Ronnie Sahlberg            2018-04-22  151  extern unsigned int smbCalcSize(void *buf, struct TCP_Server_Info *server);
^1da177e4c3f41 Linus Torvalds             2005-04-16  152  extern int decode_negTokenInit(unsigned char *security_blob, int length,
26efa0bac9dc35 Jeff Layton                2010-04-24  153  			struct TCP_Server_Info *server);
67b7626a0512d1 David Howells              2010-07-22  154  extern int cifs_convert_address(struct sockaddr *dst, const char *src, int len);
b979aaa1777259 Jeff Layton                2012-11-26  155  extern void cifs_set_port(struct sockaddr *addr, const unsigned short int port);
5ffef7bf1dd582 Pavel Shilovsky            2012-03-23  156  extern int map_smb_to_linux_error(char *buf, bool logErr);
a3713ec3d775ff Roberto Bergantinos Corpas 2020-07-03  157  extern int map_and_check_smb_error(struct mid_q_entry *mid, bool logErr);
^1da177e4c3f41 Linus Torvalds             2005-04-16  158  extern void header_assemble(struct smb_hdr *, char /* command */ ,
96daf2b09178d8 Steve French               2011-05-27  159  			    const struct cifs_tcon *, int /* length of
1982c344f1bf08 Steve French               2005-08-17  160  			    fixed section (word count) in two byte units */);
5815449d1bfcb2 Steve French               2006-02-14  161  extern int small_smb_init_no_tc(const int smb_cmd, const int wct,
96daf2b09178d8 Steve French               2011-05-27  162  				struct cifs_ses *ses,
12b3b8ffb5fd59 Steve French               2006-02-09  163  				void **request_buf);
3f618223dc0bdc Jeff Layton                2013-06-12  164  extern enum securityEnum select_sectype(struct TCP_Server_Info *server,
3f618223dc0bdc Jeff Layton                2013-06-12  165  				enum securityEnum requested);
58c45c58a1cbc8 Pavel Shilovsky            2012-05-25  166  extern int CIFS_SessSetup(const unsigned int xid, struct cifs_ses *ses,
5815449d1bfcb2 Steve French               2006-02-14  167  			  const struct nls_table *nls_cp);
95390201e7d8dd Arnd Bergmann              2018-06-19  168  extern struct timespec64 cifs_NTtimeToUnix(__le64 utc_nanoseconds_since_1601);
95390201e7d8dd Arnd Bergmann              2018-06-19  169  extern u64 cifs_UnixTimeToNT(struct timespec64);
95390201e7d8dd Arnd Bergmann              2018-06-19  170  extern struct timespec64 cnvrtDosUnixTm(__le16 le_date, __le16 le_time,
c4a2c08db7d976 Jeff Layton                2009-05-27  171  				      int offset);
c67236281c5d74 Pavel Shilovsky            2010-11-03  172  extern void cifs_set_oplock_level(struct cifsInodeInfo *cinode, __u32 oplock);
c11f1df5003d53 Sachin Prabhu              2014-03-11  173  extern int cifs_get_writer(struct cifsInodeInfo *cinode);
c11f1df5003d53 Sachin Prabhu              2014-03-11  174  extern void cifs_put_writer(struct cifsInodeInfo *cinode);
c11f1df5003d53 Sachin Prabhu              2014-03-11  175  extern void cifs_done_oplock_break(struct cifsInodeInfo *cinode);
d39a4f710b7a7b Pavel Shilovsky            2012-09-19  176  extern int cifs_unlock_range(struct cifsFileInfo *cfile,
d39a4f710b7a7b Pavel Shilovsky            2012-09-19 @177  			     struct file_lock *flock, const unsigned int xid);
d39a4f710b7a7b Pavel Shilovsky            2012-09-19  178  extern int cifs_push_mandatory_locks(struct cifsFileInfo *cfile);
1bd5bbcb653177 Steve French               2006-09-28  179  
d46b0da7a33dd8 Dave Wysochanski           2019-10-23  180  extern void cifs_down_write(struct rw_semaphore *sem);
fb1214e48f735c Pavel Shilovsky            2012-09-18 @181  extern struct cifsFileInfo *cifs_new_fileinfo(struct cifs_fid *fid,
fb1214e48f735c Pavel Shilovsky            2012-09-18  182  					      struct file *file,
fb1214e48f735c Pavel Shilovsky            2012-09-18 @183  					      struct tcon_link *tlink,
7a16f1961a5c61 Steve French               2010-10-18  184  					      __u32 oplock);
6d5786a34d98bf Pavel Shilovsky            2012-06-20  185  extern int cifs_posix_open(char *full_path, struct inode **inode,
6d5786a34d98bf Pavel Shilovsky            2012-06-20  186  			   struct super_block *sb, int mode,
6d5786a34d98bf Pavel Shilovsky            2012-06-20  187  			   unsigned int f_flags, __u32 *oplock, __u16 *netfid,
6d5786a34d98bf Pavel Shilovsky            2012-06-20  188  			   unsigned int xid);
4065c802da7484 Jeff Layton                2010-05-17 @189  void cifs_fill_uniqueid(struct super_block *sb, struct cifs_fattr *fattr);
cc0bad7552308e Jeff Layton                2009-06-25  190  extern void cifs_unix_basic_to_fattr(struct cifs_fattr *fattr,
cc0bad7552308e Jeff Layton                2009-06-25 @191  				     FILE_UNIX_BASIC_INFO *info,
cc0bad7552308e Jeff Layton                2009-06-25  192  				     struct cifs_sb_info *cifs_sb);
c052e2b423f3ea Shirish Pargaonkar         2012-09-28 @193  extern void cifs_dir_info_to_fattr(struct cifs_fattr *, FILE_DIRECTORY_INFO *,
c052e2b423f3ea Shirish Pargaonkar         2012-09-28  194  					struct cifs_sb_info *);
cc0bad7552308e Jeff Layton                2009-06-25  195  extern void cifs_fattr_to_inode(struct inode *inode, struct cifs_fattr *fattr);
cc0bad7552308e Jeff Layton                2009-06-25  196  extern struct inode *cifs_iget(struct super_block *sb,
cc0bad7552308e Jeff Layton                2009-06-25  197  			       struct cifs_fattr *fattr);
cc0bad7552308e Jeff Layton                2009-06-25  198  
1208ef1f76540b Pavel Shilovsky            2012-05-27  199  extern int cifs_get_inode_info(struct inode **inode, const char *full_path,
1208ef1f76540b Pavel Shilovsky            2012-05-27 @200  			       FILE_ALL_INFO *data, struct super_block *sb,
42eacf9e57b65f Steve French               2014-02-10  201  			       int xid, const struct cifs_fid *fid);
6a5f6592a0b606 Steve French               2020-06-11  202  extern int smb311_posix_get_inode_info(struct inode **pinode, const char *search_path,
6a5f6592a0b606 Steve French               2020-06-11  203  			struct super_block *sb, unsigned int xid);
^1da177e4c3f41 Linus Torvalds             2005-04-16  204  extern int cifs_get_inode_info_unix(struct inode **pinode,
^1da177e4c3f41 Linus Torvalds             2005-04-16  205  			const unsigned char *search_path,
6d5786a34d98bf Pavel Shilovsky            2012-06-20  206  			struct super_block *sb, unsigned int xid);
ed6875e0d6c28e Pavel Shilovsky            2012-09-18  207  extern int cifs_set_file_info(struct inode *inode, struct iattr *attrs,
ed6875e0d6c28e Pavel Shilovsky            2012-09-18  208  			      unsigned int xid, char *full_path, __u32 dosattr);
ed6875e0d6c28e Pavel Shilovsky            2012-09-18  209  extern int cifs_rename_pending_delete(const char *full_path,
ed6875e0d6c28e Pavel Shilovsky            2012-09-18  210  				      struct dentry *dentry,
ed6875e0d6c28e Pavel Shilovsky            2012-09-18  211  				      const unsigned int xid);
9934430e2178d5 Steve French               2020-10-20 @212  extern int sid_to_id(struct cifs_sb_info *cifs_sb, struct cifs_sid *psid,
9934430e2178d5 Steve French               2020-10-20  213  				struct cifs_fattr *fattr, uint sidtype);
987b21d7d91d03 Shirish Pargaonkar         2010-11-10  214  extern int cifs_acl_to_fattr(struct cifs_sb_info *cifs_sb,
0b8f18e358384a Jeff Layton                2009-07-09  215  			      struct cifs_fattr *fattr, struct inode *inode,
e2f8fbfb8d09c0 Steve French               2019-07-19  216  			      bool get_mode_from_special_sid,
42eacf9e57b65f Steve French               2014-02-10  217  			      const char *path, const struct cifs_fid *pfid);
672f807bec7d79 Shyam Prasad N             2020-08-17  218  extern int id_mode_to_cifs_acl(struct inode *inode, const char *path, __u64 *pnmode,
672f807bec7d79 Shyam Prasad N             2020-08-17  219  					kuid_t uid, kgid_t gid);
fbeba8bb16d7c5 Shirish Pargaonkar         2010-11-27  220  extern struct cifs_ntsd *get_cifs_acl(struct cifs_sb_info *, struct inode *,
fbeba8bb16d7c5 Shirish Pargaonkar         2010-11-27  221  					const char *, u32 *);
42eacf9e57b65f Steve French               2014-02-10  222  extern struct cifs_ntsd *get_cifs_acl_by_fid(struct cifs_sb_info *,
42eacf9e57b65f Steve French               2014-02-10  223  						const struct cifs_fid *, u32 *);
b73b9a4ba753df Steve French               2011-04-19  224  extern int set_cifs_acl(struct cifs_ntsd *, __u32, struct inode *,
a5ff376966c079 Shirish Pargaonkar         2011-10-13  225  				const char *, int);
643fbceef48e5b Steve French               2020-01-16 @226  extern unsigned int setup_authusers_ACE(struct cifs_ace *pace);
fdef665ba44ad5 Steve French               2019-12-06  227  extern unsigned int setup_special_mode_ACE(struct cifs_ace *pace, __u64 nmode);
975221eca5fbfd Steve French               2020-06-12  228  extern unsigned int setup_special_user_owner_ACE(struct cifs_ace *pace);
953f868138dbf4 Steve French               2007-10-31  229  
e28bc5b1fdbd6e Jeff Layton                2011-10-19  230  extern void dequeue_mid(struct mid_q_entry *mid, bool malformed);
e28bc5b1fdbd6e Jeff Layton                2011-10-19  231  extern int cifs_read_from_socket(struct TCP_Server_Info *server, char *buf,
e28bc5b1fdbd6e Jeff Layton                2011-10-19  232  			         unsigned int to_read);
71335664c38f03 Al Viro                    2016-01-09  233  extern int cifs_read_page_from_socket(struct TCP_Server_Info *server,
1dbe3466b4d260 Long Li                    2018-05-30  234  					struct page *page,
1dbe3466b4d260 Long Li                    2018-05-30  235  					unsigned int page_offset,
1dbe3466b4d260 Long Li                    2018-05-30  236  					unsigned int to_read);
2727ef44ea4615 Ronnie Sahlberg            2020-12-09  237  extern int cifs_setup_cifs_sb(struct smb3_fs_context *ctx,
724d9f1cfba0cb Pavel Shilovsky            2011-05-05  238  			       struct cifs_sb_info *cifs_sb);
724d9f1cfba0cb Pavel Shilovsky            2011-05-05  239  extern int cifs_match_super(struct super_block *, void *);
2727ef44ea4615 Ronnie Sahlberg            2020-12-09  240  extern void cifs_cleanup_volume_info(struct smb3_fs_context *ctx);
2727ef44ea4615 Ronnie Sahlberg            2020-12-09  241  extern int cifs_mount(struct cifs_sb_info *cifs_sb, struct smb3_fs_context *ctx);
2a9b99516c662d Al Viro                    2011-06-17  242  extern void cifs_umount(struct cifs_sb_info *);
aa24d1e9692411 Pavel Shilovsky            2011-12-27  243  extern void cifs_mark_open_files_invalid(struct cifs_tcon *tcon);
52ace1ef1259e1 Steve French               2016-09-22  244  extern void cifs_reopen_persistent_handles(struct cifs_tcon *tcon);
52ace1ef1259e1 Steve French               2016-09-22  245  
579f9053236c79 Pavel Shilovsky            2012-09-19  246  extern bool cifs_find_lock_conflict(struct cifsFileInfo *cfile, __u64 offset,
9645759ce6b390 Ronnie Sahlberg            2018-10-04  247  				    __u64 length, __u8 type, __u16 flags,
579f9053236c79 Pavel Shilovsky            2012-09-19 @248  				    struct cifsLockInfo **conf_lock,
081c0414dcdfd1 Pavel Shilovsky            2012-11-27  249  				    int rw_check);
233839b1df65a2 Pavel Shilovsky            2012-09-19  250  extern void cifs_add_pending_open(struct cifs_fid *fid,
233839b1df65a2 Pavel Shilovsky            2012-09-19  251  				  struct tcon_link *tlink,
233839b1df65a2 Pavel Shilovsky            2012-09-19 @252  				  struct cifs_pending_open *open);
233839b1df65a2 Pavel Shilovsky            2012-09-19  253  extern void cifs_add_pending_open_locked(struct cifs_fid *fid,
233839b1df65a2 Pavel Shilovsky            2012-09-19  254  					 struct tcon_link *tlink,
233839b1df65a2 Pavel Shilovsky            2012-09-19  255  					 struct cifs_pending_open *open);
233839b1df65a2 Pavel Shilovsky            2012-09-19  256  extern void cifs_del_pending_open(struct cifs_pending_open *open);
2727ef44ea4615 Ronnie Sahlberg            2020-12-09  257  extern struct TCP_Server_Info *cifs_get_tcp_session(struct smb3_fs_context *ctx);
53e0e11efe9289 Pavel Shilovsky            2016-11-04  258  extern void cifs_put_tcp_session(struct TCP_Server_Info *server,
53e0e11efe9289 Pavel Shilovsky            2016-11-04  259  				 int from_reconnect);
53e0e11efe9289 Pavel Shilovsky            2016-11-04  260  extern void cifs_put_tcon(struct cifs_tcon *tcon);
815465c4d724e8 Jeff Layton                2012-03-21  261  
815465c4d724e8 Jeff Layton                2012-03-21  262  #if IS_ENABLED(CONFIG_CIFS_DFS_UPCALL)
78d31a3a87f84c Igor Mammedov              2008-04-24  263  extern void cifs_dfs_release_automount_timer(void);
815465c4d724e8 Jeff Layton                2012-03-21  264  #else /* ! IS_ENABLED(CONFIG_CIFS_DFS_UPCALL) */
815465c4d724e8 Jeff Layton                2012-03-21  265  #define cifs_dfs_release_automount_timer()	do { } while (0)
815465c4d724e8 Jeff Layton                2012-03-21  266  #endif /* ! IS_ENABLED(CONFIG_CIFS_DFS_UPCALL) */
815465c4d724e8 Jeff Layton                2012-03-21  267  
^1da177e4c3f41 Linus Torvalds             2005-04-16  268  void cifs_proc_init(void);
^1da177e4c3f41 Linus Torvalds             2005-04-16  269  void cifs_proc_clean(void);
^1da177e4c3f41 Linus Torvalds             2005-04-16  270  
f7ba7fe685bc3e Pavel Shilovsky            2012-09-19  271  extern void cifs_move_llist(struct list_head *source, struct list_head *dest);
f7ba7fe685bc3e Pavel Shilovsky            2012-09-19  272  extern void cifs_free_llist(struct list_head *llist);
f7ba7fe685bc3e Pavel Shilovsky            2012-09-19  273  extern void cifs_del_lock_waiters(struct cifsLockInfo *lock);
f7ba7fe685bc3e Pavel Shilovsky            2012-09-19  274  
565674d613d7f4 Stefan Metzmacher          2020-07-21  275  extern int cifs_tree_connect(const unsigned int xid, struct cifs_tcon *tcon,
565674d613d7f4 Stefan Metzmacher          2020-07-21  276  			     const struct nls_table *nlsc);
565674d613d7f4 Stefan Metzmacher          2020-07-21  277  
286170aa241819 Pavel Shilovsky            2012-05-25  278  extern int cifs_negotiate_protocol(const unsigned int xid,
96daf2b09178d8 Steve French               2011-05-27  279  				   struct cifs_ses *ses);
58c45c58a1cbc8 Pavel Shilovsky            2012-05-25  280  extern int cifs_setup_session(const unsigned int xid, struct cifs_ses *ses,
^1da177e4c3f41 Linus Torvalds             2005-04-16  281  			      struct nls_table *nls_info);
38d77c50b4f4e3 Jeff Layton                2013-05-26  282  extern int cifs_enable_signing(struct TCP_Server_Info *server, bool mnt_sign_required);
286170aa241819 Pavel Shilovsky            2012-05-25  283  extern int CIFSSMBNegotiate(const unsigned int xid, struct cifs_ses *ses);
^1da177e4c3f41 Linus Torvalds             2005-04-16  284  
2e6e02ab6ddbd5 Pavel Shilovsky            2012-05-25  285  extern int CIFSTCon(const unsigned int xid, struct cifs_ses *ses,
96daf2b09178d8 Steve French               2011-05-27  286  		    const char *tree, struct cifs_tcon *tcon,
^1da177e4c3f41 Linus Torvalds             2005-04-16  287  		    const struct nls_table *);
^1da177e4c3f41 Linus Torvalds             2005-04-16  288  
6d5786a34d98bf Pavel Shilovsky            2012-06-20  289  extern int CIFSFindFirst(const unsigned int xid, struct cifs_tcon *tcon,
c052e2b423f3ea Shirish Pargaonkar         2012-09-28  290  		const char *searchName, struct cifs_sb_info *cifs_sb,
2608bee744a92d Shirish Pargaonkar         2012-05-15  291  		__u16 *searchHandle, __u16 search_flags,
2608bee744a92d Shirish Pargaonkar         2012-05-15 @292  		struct cifs_search_info *psrch_inf,
c052e2b423f3ea Shirish Pargaonkar         2012-09-28  293  		bool msearch);
^1da177e4c3f41 Linus Torvalds             2005-04-16  294  

:::::: The code at line 96 was first introduced by commit
:::::: fec344e3f31aa911297cd3a4639432d983b1f324 cifs: change cifs_call_async to use smb_rqst structs

:::::: TO: Jeff Layton <jlayton@redhat.com>
:::::: CC: Steve French <smfrench@gmail.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012121916.sUrhcp9C-lkp%40intel.com.

--OXfL5xGRrasGEqWY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7ZgE/D8oBZfj54kCAA==

--OXfL5xGRrasGEqWY--
