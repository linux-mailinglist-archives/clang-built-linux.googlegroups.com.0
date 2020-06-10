Return-Path: <clang-built-linux+bncBDZYPUPHYEJBBNXQQP3QKGQEQGJQXCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 131681F5758
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 17:11:51 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id a7sf479711wmf.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 08:11:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591801910; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nm1xU4HMb5S4zx5hYNvc1M31C3HCJMWc+wyGjy7KLHLPTRn3Aw0nvyXrd8yBO/h2Xr
         QiVx8RGZtnZ4aud6CvBDU8z0nbdU4qH5lghZTvo8G5zcmm/RipieWyBPMvgLKMirpR1x
         4o608kU6VS3YRIWBAABH6QrdO7wLpkiwxt7N/dkzqTjMphG5nsjeiUZn38tKQ0Q+CzTp
         J9twOPHQDiaRp+3sRv/4ZPJH4ljuXnvWgBGMs+8c6HSoP1dsS/2ez+svXeGH0FuPBps5
         szUDR8+qzKBPXXrPgoqhLrIBAjsjVJi3XY67i6xOLY1T7MibeZNoCI/p54YxNycmjK4Y
         1mbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NJbhoo7/JxFUwYz/b5q3Mml2x02yro1VfDB5cTzwSjk=;
        b=wYp91GFb3mENmmXuWdtBheRyzrlwv00lxVFSr8V4j3t80XfNhDH7PolQAuPwCcVvai
         toFFOuMgnIQa7mCn91UjTwa8G7+R0qDW8/E9TZvKfSsvQZRb5YU25f+OiQfmjKkGFEsP
         c6Wr4SgfGi1QvgMYTVXFXU/hDMIEamfslgEHieJSVxjViNhtT5uHfZZIc59Y8MNCAeTQ
         rH/DaxC3Xtea+MptT+/hnVnxdUx4NnFqdcobR/97kX2S75A7y9yYRroqwXUmA4u1JgzM
         2NxKeBYaWir/slc0eaA87BslaOms7T6ttOsQXo0b1akYWsZ0GMwSrR1bSrjDft/XMqhk
         iqwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=f5BnCBdf;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJbhoo7/JxFUwYz/b5q3Mml2x02yro1VfDB5cTzwSjk=;
        b=XAoI5E3CKZbphz2Eg0spDiuF8Qvi/n3Ml2gkoupAhM28bqrS0ZIVl6/gKCU3ufR88W
         NZ8iXxTuYyOmSBzT1jB2bM4KiGQCvI3I2vy4ej97Vydmt3PXZgBmTS4Gmjg55FaG2Wjz
         d7vUDTpT130fseM7EBclaFIbwEMC/yUhv58qmMWgoEEt9oaRyFkmEM5vOUf8zGQcAPcc
         eFzPW07MuKpYpA/sKLCnue06sHmIdzSmIW5Bpgt0iglxYLE5++jSgcbmeqBpRhPz5eme
         PyG/nxBwtY1jL5431qAYMnu48Yba+W8YUFNIVYoks6npmbc+DCSWHDhbpQ4/sJNilbDq
         1XrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJbhoo7/JxFUwYz/b5q3Mml2x02yro1VfDB5cTzwSjk=;
        b=s7CvxeBE5e9Y1Xhmctk004GswqzIYgeSDcZftBQ75R4AxR6thqV3Gi0+m/3iqKP17q
         i04SzVwKMhFKtnNYXfhVtQdfCTjJxObYJCq9Mf5v+c0Ni28HEiv7v/ZLz/g3EpP1Jpbp
         P8v/DzBqkQMbFxj3N9E3Xr1cq+8x7rW1BpnH28MygWWE1HHYacXQp2S02BhFJZCR1W6N
         9NuSL4SxrAbKaPQPqaf+8Xa1q5tbyKfua7VoR9ANuoCzii8uwcmwTE5J9A4rUdB9wlpF
         xlnLmH05O9kT9jLCn6VAiC01OTgXjgmbjBwxU8UQsMisZ7c2H9ORpa99qsQpby3JTCZe
         WTNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YxHcLaIXBUmftBtE6ygOBZW4eKTaNfLlRQMqBEcSdYK7iHUw/
	vNLQFqfa5DBkHIZRrhm1R0A=
X-Google-Smtp-Source: ABdhPJwb2HQrJ71jJOS8h3UTcJ1646cdPEV4scg4v4vwcqHxVVOj6AgneA9yDavtBETGSzKnz4HsCA==
X-Received: by 2002:a05:6000:1185:: with SMTP id g5mr4587829wrx.39.1591801910633;
        Wed, 10 Jun 2020 08:11:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:62d6:: with SMTP id w205ls1399653wmb.1.canary-gmail;
 Wed, 10 Jun 2020 08:11:49 -0700 (PDT)
X-Received: by 2002:a1c:60d6:: with SMTP id u205mr3867885wmb.163.1591801909798;
        Wed, 10 Jun 2020 08:11:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591801909; cv=none;
        d=google.com; s=arc-20160816;
        b=Er8tLQByzOKG7R+pV4yFMZsnPe2TVTy7lgiNFnxXoZpLZBNgDOrPblf+WX18Rg7pYF
         ZWQmeWC+t2NrlUOKjBpPRpIUg9/dZn8tIwK/lYGqSPZlW66j+w+tAJcDWfF6wL+mMrWv
         ugmBXNCGfVy+7Mc0T+QP7nJkxdRYX+EjdVwM1wszCbdorHueBVkPUX05A1lbNUQaHgVS
         qu7TB42kRq6IhcnlDp2Uz4+5O4aQcxjwY2VpesIP2h+rfvKI1XgaZ+ymyW6R0eJjHddn
         tiVNcqNbibh5lXybxbUBC+quHdRyAZJ5aM+0WOONZdy8CbeetNQE8uO1MVDjCEfAk+tD
         qGJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dpLVcpUgoShg/1XmdrA7+06VlUnO5aUWJK3XavqBXDw=;
        b=g4HPbqZX5jiCJbMml74FCopLywWB6O3nmcNW2x7CUxeaWEYq6ow7nTpQN1xIOTMqgF
         dVOL8/htIZGdI8/6+W8blb6pJf58bWgEascRkv3udQT4ZqBNbK2Rcl2tDx4S7WFezRbV
         PK8qlABxpW6fb5cKGHu7x5jjbX0NxM3Ww3EMcfLuFqKh0hvzgdCCH8JT7TwzoXnkmx+y
         BT0CVv/gQJr3BDqH/+DEvg23nAgCleR5lUKIZFcj9qwDeCsynhaKTrxS5oPoXIvqchGL
         1liFBkGfGyywraakntDL9rZHeTbq2E9J4Sbx61amY4qua+/sRVfv1TqF5IhzvSIIGNg6
         jdTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=f5BnCBdf;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y65si301565wmb.0.2020.06.10.08.11.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 08:11:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id o15so2947937ejm.12
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 08:11:49 -0700 (PDT)
X-Received: by 2002:a17:906:22d0:: with SMTP id q16mr3729067eja.455.1591801909256;
 Wed, 10 Jun 2020 08:11:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200607131339.476036-6-vaibhav@linux.ibm.com>
 <202006090059.o4CE5D9b%lkp@intel.com> <CAPcyv4iQo_xgRGPx_j+RPzgWGZaigGRbc_kRzKEFePfVHenx5g@mail.gmail.com>
 <87mu5cw2gl.fsf@linux.ibm.com> <CAPcyv4jfeBoFCdg2sKP5ExpTTQ_+LyrJewTupcrTgh-qWykNxw@mail.gmail.com>
 <87k10fw29r.fsf@linux.ibm.com>
In-Reply-To: <87k10fw29r.fsf@linux.ibm.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 10 Jun 2020 08:11:37 -0700
Message-ID: <CAPcyv4h_0qSqS2P0=vNk9KWy-=WZq-giNupks+Q0+wmYVt9iLA@mail.gmail.com>
Subject: Re: [PATCH v11 5/6] ndctl/papr_scm,uapi: Add support for PAPR nvdimm
 specific methods
To: Vaibhav Jain <vaibhav@linux.ibm.com>
Cc: kernel test robot <lkp@intel.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	linux-nvdimm <linux-nvdimm@lists.01.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	"Oliver O'Halloran" <oohall@gmail.com>, Santosh Sivaraj <santosh@fossix.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=f5BnCBdf;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Jun 10, 2020 at 5:10 AM Vaibhav Jain <vaibhav@linux.ibm.com> wrote:
>
> Dan Williams <dan.j.williams@intel.com> writes:
>
> > On Tue, Jun 9, 2020 at 10:54 AM Vaibhav Jain <vaibhav@linux.ibm.com> wrote:
> >>
> >> Thanks Dan for the consideration and taking time to look into this.
> >>
> >> My responses below:
> >>
> >> Dan Williams <dan.j.williams@intel.com> writes:
> >>
> >> > On Mon, Jun 8, 2020 at 5:16 PM kernel test robot <lkp@intel.com> wrote:
> >> >>
> >> >> Hi Vaibhav,
> >> >>
> >> >> Thank you for the patch! Perhaps something to improve:
> >> >>
> >> >> [auto build test WARNING on powerpc/next]
> >> >> [also build test WARNING on linus/master v5.7 next-20200605]
> >> >> [cannot apply to linux-nvdimm/libnvdimm-for-next scottwood/next]
> >> >> [if your patch is applied to the wrong git tree, please drop us a note to help
> >> >> improve the system. BTW, we also suggest to use '--base' option to specify the
> >> >> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >> >>
> >> >> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Jain/powerpc-papr_scm-Add-support-for-reporting-nvdimm-health/20200607-211653
> >> >> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
> >> >> config: powerpc-randconfig-r016-20200607 (attached as .config)
> >> >> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> >> >> reproduce (this is a W=1 build):
> >> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >> >>         chmod +x ~/bin/make.cross
> >> >>         # install powerpc cross compiling tool for clang build
> >> >>         # apt-get install binutils-powerpc-linux-gnu
> >> >>         # save the attached .config to linux build tree
> >> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
> >> >>
> >> >> If you fix the issue, kindly add following tag as appropriate
> >> >> Reported-by: kernel test robot <lkp@intel.com>
> >> >>
> >> >> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >> >>
> >> >> In file included from <built-in>:1:
> >> >> >> ./usr/include/asm/papr_pdsm.h:69:20: warning: field 'hdr' with variable sized type 'struct nd_cmd_pkg' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
> >> >> struct nd_cmd_pkg hdr;  /* Package header containing sub-cmd */
> >> >
> >> > Hi Vaibhav,
> >> >
> >> [.]
> >> > This looks like it's going to need another round to get this fixed. I
> >> > don't think 'struct nd_pdsm_cmd_pkg' should embed a definition of
> >> > 'struct nd_cmd_pkg'. An instance of 'struct nd_cmd_pkg' carries a
> >> > payload that is the 'pdsm' specifics. As the code has it now it's
> >> > defined as a superset of 'struct nd_cmd_pkg' and the compiler warning
> >> > is pointing out a real 'struct' organization problem.
> >> >
> >> > Given the soak time needed in -next after the code is finalized this
> >> > there's no time to do another round of updates and still make the v5.8
> >> > merge window.
> >>
> >> Agreed that this looks bad, a solution will probably need some more
> >> review cycles resulting in this series missing the merge window.
> >>
> >> I am investigating into the possible solutions for this reported issue
> >> and made few observations:
> >>
> >> I see command pkg for Intel, Hpe, Msft and Hyperv families using a
> >> similar layout of embedding nd_cmd_pkg at the head of the
> >> command-pkg. struct nd_pdsm_cmd_pkg is following the same pattern.
> >>
> >> struct nd_pdsm_cmd_pkg {
> >>     struct nd_cmd_pkg hdr;
> >>     /* other members */
> >> };
> >>
> >> struct ndn_pkg_msft {
> >>     struct nd_cmd_pkg gen;
> >>     /* other members */
> >> };
> >> struct nd_pkg_intel {
> >>     struct nd_cmd_pkg gen;
> >>     /* other members */
> >> };
> >> struct ndn_pkg_hpe1 {
> >>     struct nd_cmd_pkg gen;
> >>     /* other members */
> [.]
> >
> > In those cases the other members are a union and there is no second
> > variable length array. Perhaps that is why those definitions are not
> > getting flagged? I'm not seeing anything in ndctl build options that
> > would explicitly disable this warning, but I'm not sure if the ndctl
> > build environment is missing this build warning by accident.
>
> I tried building ndctl master with clang-10 with CC=clang and
> CFLAGS="". Seeing the same warning messages reported for all command
> package struct for existing command families.
>
> ./hpe1.h:334:20: warning: field 'gen' with variable sized type 'struct nd_cmd_pkg' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>         struct nd_cmd_pkg gen;
>                           ^
> ./msft.h:59:20: warning: field 'gen' with variable sized type 'struct nd_cmd_pkg' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>         struct nd_cmd_pkg       gen;
>                                 ^
> ./hyperv.h:34:20: warning: field 'gen' with variable sized type 'struct nd_cmd_pkg' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>         struct nd_cmd_pkg       gen;
>                                 ^

Good to know, but ugh now I'm just realizing this warning is only
coming from clang and not gcc. Frankly I'm not as concerned about
clang warnings and I should have been more careful looking at the
source of this warning.

> >
> > Those variable size payloads are also not being used in any code paths
> > that would look at the size of the command payload, like the kernel
> > ioctl() path. The payload validation code needs static sizes and the
> > payload parsing code wants to cast the payload to a known type. I
> > don't think you can use the same struct definition for both those
> > cases which is why the ndctl parsing code uses the union layout, but
> > the kernel command marshaling code does strict layering.
> Even if I switch to union layout and replacing the flexible array 'payload'
> at end to a fixed size array something like below, I still see
> '-Wgnu-variable-sized-type-not-at-end' warning reported by clang:
>
> union nd_pdsm_cmd_payload {
>         struct nd_papr_pdsm_health health;
>         __u8 buf[ND_PDSM_PAYLOAD_MAX_SIZE];
> };
>
> struct nd_pdsm_cmd_pkg {
>         struct nd_cmd_pkg hdr;  /* Package header containing sub-cmd */
>         __s32 cmd_status;       /* Out: Sub-cmd status returned back */
>         __u16 reserved[2];      /* Ignored and to be used in future */
>         union nd_pdsm_cmd_payload payload;
> } __attribute__((packed));

Even though this is a clang warning, I'm still not sure it's a good
idea to copy the ndctl approach into the kernel. Could you perhaps
handle this the way that drivers/acpi/nfit/intel.c handles submitting
commands through the ND_CMD_CALL interface, i.e. by just defining the
command locally like this (from intel_security_flags()):

        struct {
                struct nd_cmd_pkg pkg;
                struct nd_intel_get_security_state cmd;
        } nd_cmd = {
                .pkg = {
                        .nd_command = NVDIMM_INTEL_GET_SECURITY_STATE,
                        .nd_family = NVDIMM_FAMILY_INTEL,
                        .nd_size_out =
                                sizeof(struct nd_intel_get_security_state),
                        .nd_fw_size =
                                sizeof(struct nd_intel_get_security_state),
                },
        };

That way it's clear that the payload is 'struct
nd_intel_get_security_state' without needing to have a pre-existing
definition. For parsing in the ioctl path I think it's clearer to cast
the payload to the local pdsm structure for the command.

>
>
> >
> >> };
> >>
> >> Even though other command families implement similar command-package
> >> layout they were not flagged (yet) as they are (I am guessing) serviced
> >> in vendor acpi drivers rather than in kernel like in case of papr-scm
> >> command family.
> >
> > I sincerely hope there are no vendor acpi kernel drivers outside of
> > the upstream one.
> Apologies if I was not clear. Was referring to nvdimm vendor uefi
> drivers which ultimately service the DSM commands. Since CMD_CALL serves
> as a conduit to send the command payload to these vendor drivers,
> libnvdimm never needs to peek into the nd_cmd_pkg.payload
> field. Consequently nfit module never hit this warning in kernel before.

Ah, understood, and no, that's not the root reason this problem is not
present in the kernel. The expectation is that any payload that the
kernel would need to consider should probably have a kernel specific
translation defined. For example,

        ND_CMD_GET_CONFIG_SIZE
        ND_CMD_GET_CONFIG_DATA
        ND_CMD_SET_CONFIG_DATA

...are payloads that the kernel needs to understand. However instead
of supporting each way to read / write the label area the expectation
is that all drivers just parse this common kernel payload and
translate it if necessary. For example ND_CMD_{GET,SET}_CONFIG_DATA is
optionally translated to the Intel DSMs, generic ACPI _LSR/_LSW, or
papr_scm_meta_{get,set}.

Outside of validating command numbers the expectation is that the
kernel does not validate/consume the contents of the ND_CMD_CALL
payload, it passes it to the backend where ACPI DSM or pdsm protocol
takes over.

>
> >
> >>
> >> So, I think this issue is not just specific to papr-scm command family
> >> introduced in this patch series but rather across all other command
> >> families. Every other command family assumes 'struct nd_cmd_pkg_hdr' to
> >> be embeddable and puts it at the beginning of their corresponding
> >> command-packages. And its only a matter of time when someone tries
> >> filtering/handling of vendor specific commands in nfit module when they
> >> hit similar issue.
> >>
> >> Possible Solutions:
> >>
> >> * One way would be to redefine 'struct nd_cmd_pkg' to mark field
> >>   'nd_payload[]' from a flexible array to zero sized array as
> >>   'nd_payload[0]'.
> >
> > I just went through a round of removing the usage of buf[0] in ndctl
> > since gcc10 now warns about that too.
> >
> >> This should make 'struct nd_cmd_pkg' embeddable and
> >>   clang shouldn't report 'gnu-variable-sized-type-not-at-end'
> >>   warning. Also I think this change shouldn't introduce any ABI change.
> >>
> >> * Another way to solve this issue might be to redefine 'struct
> >>   nd_pdsm_cmd_pkg' to below removing the 'struct nd_cmd_pkg' member. This
> >>   struct should immediately follow the 'struct nd_cmd_pkg' command package
> >>   when sent to libnvdimm:
> >>
> >>   struct nd_pdsm_cmd_pkg {
> >>         __s32 cmd_status;       /* Out: Sub-cmd status returned back */
> >>         __u16 reserved[2];      /* Ignored and to be used in future */
> >>         __u8 payload[];
> >>         };
> >>
> >>   This should remove the flexible member nc_cmd_pkg.nd_payload from the
> >>   struct with just one remaining at the end. However this would make
> >>   accessing the [in|out|fw]_size members of 'struct nd_cmd_pkg'
> >>   difficult for the pdsm servicing functions.
> >>
> >>
> >> Any other solution that you think, may solve this issue ?
> >
> > The union might help, but per the above I think only for parsing the
> > command at which point I don't think the kernel needs a unified
> > structure defining both the generic envelope and the end-point
> > specific payload at once.
>
> As I tested above, switching to union too will not solve the clang
> warning.
>
> Having a unified structure for a command family defining both
> generic envelop and end-point specific payload, is what I see all the
> existing command families doing.
>
> However if I split 'struct nd_pdsm_cmd_pkg' to not have an embedded
> 'struct nd_cmd_pkg' then it goes opposite to what existing command family
> implementations.
>
> So to me it looks like no clear way to address this :-(
>
> Another non-conventional way to fix this might be to suppress this clang
> warning messages by adding "CFLAGS_papr_scm.o +=
> -Wno-gnu-variable-sized-type-not-at-end" to papr_scm Makefile.

No, I don't think it's appropriate to customize clang warnings. Have a
look at splitting parsing vs local command submission following the
approach taken in drivers/acpi/nfit/intel.c.

> Current implementation 'struct nd_cmd_pkg' clearly depends on gcc
> extension of having a flexible payload array which is allowed to be not
> necessarily placed at the end of a containing struct. So the problem can be
> attributed to difference in compiler implementations between GCC and
> Clang rather than how 'struct nd_pdsm_cmd_pkg' and 'struct nd_cmd_pkg'
> are laid out.
>
> --
> Cheers
> ~ Vaibhav

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4h_0qSqS2P0%3DvNk9KWy-%3DWZq-giNupks%2BQ0%2BwmYVt9iLA%40mail.gmail.com.
