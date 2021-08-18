Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGHB6SEAMGQEINXJVSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id B19393F08BA
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 18:08:57 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id a15-20020a92444f000000b0022473393120sf1511995ilm.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:08:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629302936; cv=pass;
        d=google.com; s=arc-20160816;
        b=QAWrEdDG5jwuoNctaBZSP6ITh7OcQLw+mJWLCue4utd/A3wlQ8GU+V1ddWwAvtMfj9
         EgBsrc8Z5E7hWLqmFs1DGJ8d6lRRnCCj6DekWWqEtclRmdr1e2fKqpbBr8T1/TNwd4G5
         KYjtNh4SEvHjxTFxdbwzebNyQoTV8RIEqEmNRSEviZAHmNuEwwqLu703b9XQ8tkvWdEG
         0MV2cF5bPUJ9yc32JH0o4ejxL9XbE5sFr0DR8JbUrXZvPSeHfdSmqsT8RfENyg5OQVWE
         YPtN96a+9k/0AUhPGrZDOAYme5r2fUcZ+CDyQsLcDp95Tv4GdP80fOLJkn8fQrP5A52x
         aPyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=I2whuM89xltVb/zWS5cKK1a989u56HPdOresPmhsxi8=;
        b=jvrbQhMpxJ5BljE6WMhuhzbBQoNcxwYfHyhw8Nh5BzqMkbhigLJBII7Ag6xu9UOw0Z
         +v9pjIjgXYGMZoObFFKbRKTaw98dvlU3+ThfOdWEfkl/mQ76Ai2O0Z5hF6YApxULgZlJ
         +X59fTVTKG4+CRzbz11CmxFavrDzxy404FnV5VcSqRSp9q35hxiZFe9m+o9YbfGGKqD6
         CxYquUXgOmltV5DaODdgJSL59DwdWun6z5zy8SRw66Oeb1HBcrduJJoxAiyIzKCBFv7W
         qx146m1Xu0TZlgxpEAI/Ue10Tuc6D5D5xNzbx7WBrhm5S5SP4SNzPo2OgKi9yZHxR6bu
         kf2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I2whuM89xltVb/zWS5cKK1a989u56HPdOresPmhsxi8=;
        b=UfRv7Efx8MTg/UvGB5jElbEaiOxPxQLgnawSjNJM7MSL6+6CijdXwocgEFZ5HTV32a
         1JrC7nPDX3aoZ6m55j1Alubv3Kat8h+2PT1MDKWa0tpwPKNKxn7GLj8Eg1dsJvm8DRFD
         ywinJHpYEklS/Ukf42gh5EedLbyQ3T/s8yIeboapKfgyqTLcto5OsCpF5dEpUzVRXidb
         ZFgxcwblvw+NIY7EjlhPZr2ZvVKLtibQglvMPWpZMuYKti+lf1ofjLraQV45F7MxldvO
         64c8aRtnntp3AHxDmCGWDKMrTSoHwa+xl6+wbY+QdfdZ+WaYadhrPs7/SykNEjXBLPFt
         +F3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I2whuM89xltVb/zWS5cKK1a989u56HPdOresPmhsxi8=;
        b=E7rBf49D6EZLGPxBFdj58EK5J9V0ACXs+2J0fB75j9LqhZnfeuqHSzJ9nJLmAXCYcv
         i7Y4n1/uSGwn12YBsGSWpLTUY2zOy6dRqzHHO2YkTExpgvF6bkwq3WGWOQFGvm7tfNpN
         1oz9GI2yc9GaL4clyyWgvwBxIQ+DZPLiEeLKLx9gF6MRwK5BsXYUSNH2d3OwnbKOV16h
         NR05Rny9//WS4TODmP0RoEQ3jNEd1UrWVkj0docB+iLTMIVCIknxSec/tfzwUBt5CmZ/
         3OyoPjcHGcG7b/TE3AaUon+NiEjEdL6l+YhTFeX/kvygeYCIsh98Ba0hCdgwIkQX+mpI
         qWcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jktuD6xqA3RQCOXs5yon/hz8p9euB8rYFrLvB9IHCibJlmqmu
	ceThWPxmc8V/xeUFRM4Mz+Y=
X-Google-Smtp-Source: ABdhPJxAQNaUmjzI7RqEd1tYYp8pVO+rR8AthfEhr7aEpORt2NC6jyYXnRQGwgayHTSbOHGlE1DhEQ==
X-Received: by 2002:a6b:710f:: with SMTP id q15mr1077519iog.77.1629302936382;
        Wed, 18 Aug 2021 09:08:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2607:: with SMTP id n7ls395713ile.8.gmail; Wed, 18 Aug
 2021 09:08:56 -0700 (PDT)
X-Received: by 2002:a92:c242:: with SMTP id k2mr5994699ilo.33.1629302935757;
        Wed, 18 Aug 2021 09:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629302935; cv=none;
        d=google.com; s=arc-20160816;
        b=gGaUDJ0HVrHqaW9qtNWGhC42FpXpmjg44tG2C+SkKnE9syVtQpc12hiEuc4JD7Oenr
         W6I0il6SF8iCrQIlfYc0c/EAKZDf69Rl3FuwCFReWLZojwFGqC2vtqs1+ZGq/H2U2k+/
         TKklwoDFRaJdV24id0R6qmNYNb1lA4bu/zBfC1lQquAC2PGE6ke1WfobyIh838MUl1vP
         cInz+edCnuDxW3t4WPrpgfIn5fvk4dDHEgxWw17hLp15BplZdiL/pQCyv6eA6Ur0qf3g
         WKwKUBV0Fy89gC3XN8d4wsTOaSC4hY7B4bNyjFkzjlXP/3vPB6ZGHoPUc5U4qeR5Y/ul
         5Z3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=7aT+KQTvdgwpYCZw2h6hvvSpakO7kGfX1cZg/jhvTUw=;
        b=QWfJOJ+Jf18VuxUq9F/7NqA94VM300KjtUgvYeMaY2DZHN+eyt4K1R3sonIVA/SOsp
         fopP8CjHRiO1BGIyXoLQ5JXFO/btrR22yrlB6Y9pI6MECQXWtuUYu5TBc+8rwDVPZWVu
         M8DMnrYopsUpzL40B69gq9/1QclQ5cA5AZFcF5t/rAwYWCLfiJiNhrWW5v3l2Dj8IK3P
         +KrGcI3CE5ILMD4BgqEHBbJqV3OKR8XvZ/syXROhB7Fv0v8FYP7rkrYYBByt7xVDUUZx
         VJdM/NHTFMDT30zRCcExr9etQfsBewZY5+C3phLWeTW4j8e+NUc99Pg7N7BbUqUXRaYT
         JbCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id o21si11015iov.2.2021.08.18.09.08.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 09:08:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216091176"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="216091176"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 09:06:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="511289959"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 18 Aug 2021 09:06:45 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGO5U-000T6x-TB; Wed, 18 Aug 2021 16:06:44 +0000
Date: Thu, 19 Aug 2021 00:05:46 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>
Subject: [mcgrof-next:20210817-add-disk-error-handling-next 1/89]
 drivers/nvme/host/core.c:3760:22: error: use of undeclared identifier
 'NVME_QUIRK_LIGHTNVM'; did you mean 'NVME_NS_LIGHTNVM'?
Message-ID: <202108190040.XtaIEVKi-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="X1bOJ3K7DJ5YkBrT"
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


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git 20210817-add-disk-error-handling-next
head:   3d00c210d7fd616243af9cf41829f4a56f116ba8
commit: 6e8cedeeaa2d0b259010b0d956020ba8284196ce [1/89] nvme: use blk_mq_alloc_disk
config: hexagon-randconfig-r045-20210816 (attached as .config)
compiler: clang version 12.0.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git/commit/?id=6e8cedeeaa2d0b259010b0d956020ba8284196ce
        git remote add mcgrof-next https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git
        git fetch --no-tags mcgrof-next 20210817-add-disk-error-handling-next
        git checkout 6e8cedeeaa2d0b259010b0d956020ba8284196ce
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=hexagon SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/nvme/host/core.c:3760:22: error: use of undeclared identifier 'NVME_QUIRK_LIGHTNVM'; did you mean 'NVME_NS_LIGHTNVM'?
           if ((ctrl->quirks & NVME_QUIRK_LIGHTNVM) && id->vs[0] == 0x1) {
                               ^~~~~~~~~~~~~~~~~~~
                               NVME_NS_LIGHTNVM
   drivers/nvme/host/nvme.h:52:2: note: 'NVME_NS_LIGHTNVM' declared here
           NVME_NS_LIGHTNVM        = 1,
           ^
>> drivers/nvme/host/core.c:3761:7: error: implicit declaration of function 'nvme_nvm_register' [-Werror,-Wimplicit-function-declaration]
                   if (nvme_nvm_register(ns, disk->disk_name, node)) {
                       ^
   drivers/nvme/host/core.c:3761:7: note: did you mean 'nvme_pr_register'?
   drivers/nvme/host/core.c:1970:12: note: 'nvme_pr_register' declared here
   static int nvme_pr_register(struct block_device *bdev, u64 old,
              ^
   2 errors generated.


vim +3760 drivers/nvme/host/core.c

  3710	
  3711	static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid,
  3712			struct nvme_ns_ids *ids)
  3713	{
  3714		struct nvme_ns *ns;
  3715		struct gendisk *disk;
  3716		struct nvme_id_ns *id;
  3717		int node = ctrl->numa_node;
  3718	
  3719		if (nvme_identify_ns(ctrl, nsid, ids, &id))
  3720			return;
  3721	
  3722		ns = kzalloc_node(sizeof(*ns), GFP_KERNEL, node);
  3723		if (!ns)
  3724			goto out_free_id;
  3725	
  3726		disk = blk_mq_alloc_disk(ctrl->tagset, ns);
  3727		if (IS_ERR(disk))
  3728			goto out_free_ns;
  3729		disk->fops = &nvme_bdev_ops;
  3730		disk->private_data = ns;
  3731	
  3732		ns->disk = disk;
  3733		ns->queue = disk->queue;
  3734	
  3735		if (ctrl->opts && ctrl->opts->data_digest)
  3736			blk_queue_flag_set(QUEUE_FLAG_STABLE_WRITES, ns->queue);
  3737	
  3738		blk_queue_flag_set(QUEUE_FLAG_NONROT, ns->queue);
  3739		if (ctrl->ops->flags & NVME_F_PCI_P2PDMA)
  3740			blk_queue_flag_set(QUEUE_FLAG_PCI_P2PDMA, ns->queue);
  3741	
  3742		ns->ctrl = ctrl;
  3743		kref_init(&ns->kref);
  3744	
  3745		if (nvme_init_ns_head(ns, nsid, ids, id->nmic & NVME_NS_NMIC_SHARED))
  3746			goto out_cleanup_disk;
  3747	
  3748		/*
  3749		 * Without the multipath code enabled, multiple controller per
  3750		 * subsystems are visible as devices and thus we cannot use the
  3751		 * subsystem instance.
  3752		 */
  3753		if (!nvme_mpath_set_disk_name(ns, disk->disk_name, &disk->flags))
  3754			sprintf(disk->disk_name, "nvme%dn%d", ctrl->instance,
  3755				ns->head->instance);
  3756	
  3757		if (nvme_update_ns_info(ns, id))
  3758			goto out_unlink_ns;
  3759	
> 3760		if ((ctrl->quirks & NVME_QUIRK_LIGHTNVM) && id->vs[0] == 0x1) {
> 3761			if (nvme_nvm_register(ns, disk->disk_name, node)) {
  3762				dev_warn(ctrl->device, "LightNVM init failure\n");
  3763				goto out_unlink_ns;
  3764			}
  3765		}
  3766	
  3767		down_write(&ctrl->namespaces_rwsem);
  3768		list_add_tail(&ns->list, &ctrl->namespaces);
  3769		up_write(&ctrl->namespaces_rwsem);
  3770	
  3771		nvme_get_ctrl(ctrl);
  3772	
  3773		device_add_disk(ctrl->device, ns->disk, nvme_ns_id_attr_groups);
  3774		if (!nvme_ns_head_multipath(ns->head))
  3775			nvme_add_ns_cdev(ns);
  3776	
  3777		nvme_mpath_add_disk(ns, id);
  3778		nvme_fault_inject_init(&ns->fault_inject, ns->disk->disk_name);
  3779		kfree(id);
  3780	
  3781		return;
  3782	
  3783	 out_unlink_ns:
  3784		mutex_lock(&ctrl->subsys->lock);
  3785		list_del_rcu(&ns->siblings);
  3786		if (list_empty(&ns->head->list))
  3787			list_del_init(&ns->head->entry);
  3788		mutex_unlock(&ctrl->subsys->lock);
  3789		nvme_put_ns_head(ns->head);
  3790	 out_cleanup_disk:
  3791		blk_cleanup_disk(disk);
  3792	 out_free_ns:
  3793		kfree(ns);
  3794	 out_free_id:
  3795		kfree(id);
  3796	}
  3797	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108190040.XtaIEVKi-lkp%40intel.com.

--X1bOJ3K7DJ5YkBrT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Dw9MG+KcfAEA

--X1bOJ3K7DJ5YkBrT--
