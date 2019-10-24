Return-Path: <clang-built-linux+bncBCDITI7XW4DRBXEHZDWQKGQEXHSV5UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB26E3CB7
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 22:04:44 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id o92sf16246714edb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 13:04:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571947484; cv=pass;
        d=google.com; s=arc-20160816;
        b=iF6IHAfrOmYY1nt6Ym9ecrfwJbMwYdlcFIqLq3q9u+deVWNWvlpy5znxwfM5XmiKSR
         i5RpqwQTZqvddGTJOTOIncn7nASeyvfTxdPo9bmDpAJ/jzUDek5tNeeMjhesJh6XkbyS
         /T3C9iMza+l7f+1AhOj4BTutU+I974EGNo/6LTWBMsAJsw7dnlT/EeVNPXNpBa3+9Zxj
         wfT+Earvxzx85bkSlIhP22G4tzEhzYmPWfvSmyv+ua6pdBCtNb5ZkYT/W0xhhoShRULf
         2ZTJuxTmaVFm1PofaJjme6fFb8j4i7CwgTc0LUIulbyYsXxQXL66ufoEbPJAl5PnYaL7
         e7sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:user-agent:message-id
         :references:cc:in-reply-to:from:to:mime-version:sender
         :dkim-signature;
        bh=GaikEQdz5qb27gh2EwR6ObbtSCzQiwIpZojzZsM6NSA=;
        b=PwRA9CBjxRHRvNa0Xuj2fjPsHNPnLK36nPUhHzAIHL7NPeZiLrZNc+HZkLqEYsOTPA
         K08ITgMUh77MadL0nYEHc4GJ4c7ooV7Z/0r3Dh89F1xai4Po89TC8DX9heZZ3TkuttRJ
         dpPEINN3ZWBOFJkEB676bJmlXqXzyD/vRxjhvepUqZEAcXodNw/iu2nK+fVX5sq9dz/2
         crg/J6AQToMev9EDMvMgUZYRcinCXnIcGgd84hBP5e5/YcHG8XnYqCeGht12kkB65em3
         4tn1sEI4n68d2ylDSvutI9xQ5T/38KfVR/lzXLPQACu+RXZIm1m6lNWSJ3+GupIHbSb2
         jFVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:to:from:in-reply-to:cc:references:message-id
         :user-agent:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GaikEQdz5qb27gh2EwR6ObbtSCzQiwIpZojzZsM6NSA=;
        b=rS41J2Mfj+DaChMvzO7sJYhAGfK5GH23a/gJhRhKqD4hMzewETHpBBDghIhcpoqBqf
         d+GyCBm1tJEYBq8sGJiCaxjULa/UPrXgi21cpzQzPLqNDS1r1+ii8EK8EZFMXVIuNpiU
         gr3LTPVrz+LzpCdbPu4mtAwClrN/lY42ItuvwnHpAEmGZdy7gTss5YLYyLIFV59Hw/l4
         yuTIw9bRmDNch61/g1YSLg55sAqDTojgTtiM2JiLIknTqChuidCEHDxLRCxGGiEWHBtY
         57j5Jni7Uv7TC+S7nkcibi6lB/zxFw+k2+ZgZqXM8gL1fAN9iKLzZBPQ30wCmLOx5uN/
         eOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:to:from:in-reply-to:cc
         :references:message-id:user-agent:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GaikEQdz5qb27gh2EwR6ObbtSCzQiwIpZojzZsM6NSA=;
        b=T/qvc6AKAudtq0Ed6oc5plM7DbUUvWsfxGFOm+wLLWGZvbnaerHKLScnheg6c98QrV
         +4O74E5p1ukBIpDa9xfGQ8kvI5KVsDu/ospj0grAmVbXylykZ2MoMpIZdbMiDTFsQH7v
         W2ulDbp+Qx/U6Y0ql2brP4vNdDAl1GlU4EFREAyfKiw5/iANw6+XgdAMygQoAtGn3mHB
         AIaYk1CKsi85eiGXPHrm7FUTPILW8W8KhIxfcmeoPdkpYhCfV/FXpQQzfcmeuRnMkS3f
         LL55nPzhrsgy3c1ldvNO+J9sbsqt3xV6sOei0uyxn7qO+8OXahTI2Xl9UTzgghMfNgHX
         lblQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUR0PCKCT5oNUqT+omQXib+rviLYMQLyvuhhXIpujmHXDwnrF2Q
	Msuc8OQl0spQi6WN+xwbv0I=
X-Google-Smtp-Source: APXvYqzL1TlaMNQOvDOW+OPdky5xHNbj8YP6LQZPDEfsEmU9eJpsrOi/iz1jfuy0HLTGNuo6qppp/Q==
X-Received: by 2002:a50:97af:: with SMTP id e44mr58059edb.3.1571947484578;
        Thu, 24 Oct 2019 13:04:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d58b:: with SMTP id r11ls677619edq.10.gmail; Thu, 24 Oct
 2019 13:04:44 -0700 (PDT)
X-Received: by 2002:aa7:d54e:: with SMTP id u14mr52651edr.49.1571947484091;
        Thu, 24 Oct 2019 13:04:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571947484; cv=none;
        d=google.com; s=arc-20160816;
        b=Fgi6BmieXWUWEY+vroYgYVcYegOl6Gm3a43yDWeLvomhJ/JiG4WCBwwGj0IZxiZKnV
         mM1TpiuoCviPwcriuBMTq9NZkArICLI6NMojrJUcO0R8RMykD2UB85OwAR0jsAU70jqu
         iae+JNNXAnBtzSoxWEvfFi9LhAFwhDK6CsG+RDeDaMZDS7ivQ0ZMKgxFI8De70NLODTt
         NgLUwszV8HS3eSljSx6Eoju0+4VPBlUEx7KTghmbNRiK2LFZHcfZAcqI9IGrWZPh+X7b
         R/C3TpBiYATIdjjb/7woowwjXF0gXyXPjLUIXbgRp2ONha5EBf5Eq/v/FLywCu/3fmtV
         va1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version;
        bh=40MZkkxVhjJNxdZJ+F2Uk/D2NFjJC9OOnwUurUNpO/4=;
        b=P6A60dMVD/2R11Ugx64qvHNwOwR8q1if4N39IY0PMq8mntH0Qs4ElUiW4lhEYlVKhU
         SEaw0YmUDQkOOv8Yy+mIkxdvfc7v+zAVZAI/RkvwayORzgFm+VhhIybzRsRuyGOsYQM8
         WLXnwozMBhI0vMuzgUgTNg1pCvZF9ZPQmKKQs8O9jr19+TIEAnjsFjre/L0Ntxm3rKON
         ITp2a+bagqeIhpRB5fFHXYQf22rqfSMmFnIjsMrRdTwEXIKUrIpZDmCIhgdsDJhyi9Ao
         Oq9xNQOyywUPY7grRdDyg7+Ic6N6fFkGE+2TBQgI+14xY7og7AThadk9SMBjNGhjLAHd
         EYkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id c31si169711edb.0.2019.10.24.13.04.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:04:43 -0700 (PDT)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 18954686-1500050 
	for multiple; Thu, 24 Oct 2019 21:04:31 +0100
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
To: Nathan Chancellor <natechancellor@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191024170819.GA40118@ubuntu-m2-xlarge-x86>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>
References: <201910241556.zhmi2E5w%lkp@intel.com>
 <20191024170819.GA40118@ubuntu-m2-xlarge-x86>
Message-ID: <157194746880.2725.6247510106796004407@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [drm-drm-intel:drm-intel-next-queued 5/6]
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: warning: use of
 logical '&&' with constant operand
Date: Thu, 24 Oct 2019 21:04:28 +0100
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 109.228.58.192 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Nathan Chancellor (2019-10-24 18:08:19)
> Hi Chris,
> 
> The 0day team has been doing clang builds for us and sending the results
> to our mailing list; this one popped up. Mind taking a look at it?
> 
> On Thu, Oct 24, 2019 at 03:54:59PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@lists.01.org
> > TO: Chris Wilson <chris@chris-wilson.co.uk>
> > CC: Jon Bloomfield <jon.bloomfield@intel.com>
> > CC: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > 
> > tree:   git://anongit.freedesktop.org/drm/drm-intel drm-intel-next-queued
> > head:   8eb8e322ec07392e8c8008437216c38c310ff6c7
> > commit: 058179e72e0956a2dfe4927db6cbe5fbfb2406aa [5/6] drm/i915/gt: Replace hangcheck by heartbeats
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project bf869683c3f26827853e3c34d3c4a337069928fe)
> > reproduce:
> >         git checkout 058179e72e0956a2dfe4927db6cbe5fbfb2406aa
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: warning: use of logical '&&' with constant operand [-Wconstant-logical-operand]
> >            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> >                       ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: note: use '&' for a bitwise operation
> >            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> >                       ^~
> >                       &
> >    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: note: remove constant to silence this warning
> >            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> >                      ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    1 warning generated.
> > 
> > vim +159 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > 
> >    152        
> >    153        int intel_engine_set_heartbeat(struct intel_engine_cs *engine,
> >    154                                       unsigned long delay)
> >    155        {
> >    156                int err;
> >    157        
> >    158                /* Send one last pulse before to cleanup persistent hogs */
> >  > 159                if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> 
> Might I suggest either explicitly stating '!= 0' or casting to a
> boolean? You could also swap the CONFIG and the !delay to silence it but
> that is fragile since Clang should probably emit the same warning in
> that case (see https://bugs.llvm.org/show_bug.cgi?id=38571).

How well does IS_ENABLED() work with kconfig value types?
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157194746880.2725.6247510106796004407%40skylake-alporthouse-com.
